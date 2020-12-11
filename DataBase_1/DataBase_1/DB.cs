using System;
using System.Data;
using MySql.Data.MySqlClient;

namespace DataBase
{
    internal class DB
    {
        private static DB dB;
        private readonly MySqlConnection conn;

        private DB()
        {
            conn = new MySqlConnection("server=localhost;port=3306;user=root;database=plant;password=root");
        }

        public static DB GetDB()
        {
            if (dB == null) dB = new DB();

            return dB;
        }

        private void openConnection()
        {
            if (conn.State == ConnectionState.Closed)
                conn.Open();
        }

        private void closeConnection()
        {
            if (conn.State == ConnectionState.Open)
                conn.Close();
        }

        public void brakins(int guiltyincumbentId, int exampleProductId)
        {
            openConnection();
            var command = new MySqlCommand("call brakins(@guiltyincumbentId,@exampleProductId)", conn);
            command.Parameters.Add("@guiltyincumbentId", MySqlDbType.Int32).Value = guiltyincumbentId;
            command.Parameters.Add("@exampleProductId", MySqlDbType.Int32).Value = exampleProductId;
            command.ExecuteNonQuery();
            closeConnection();
        }

        public void mashins(int workplase, int type, string name, int invNumber)
        {
            openConnection();
            var command = new MySqlCommand(
                "Insert into machine (machine_invNumber, machine_model, workplace_id,type_mashine_id)" +
                "values (@inv,@mm,@wid,@tid)", conn);
            command.Parameters.Add("@inv", MySqlDbType.Int32).Value = invNumber;
            command.Parameters.Add("@mm", MySqlDbType.VarChar).Value = name;
            command.Parameters.Add("@wid", MySqlDbType.Int32).Value = workplase;
            command.Parameters.Add("@tid", MySqlDbType.Int32).Value = type;
            command.ExecuteNonQuery();
            closeConnection();
        }

        public void typeins(string name)
        {
            openConnection();
            var command = new MySqlCommand(
                "Insert into type_mashine (type_mashine_name)" +
                "values (@mm)", conn);
            command.Parameters.Add("@mm", MySqlDbType.VarChar).Value = name;
            command.ExecuteNonQuery();
            closeConnection();
        }

        public void wpins(string name)
        {
            openConnection();
            var command = new MySqlCommand(
                "Insert into work_position (work_position_name)" +
                "values (@mm)", conn);
            command.Parameters.Add("@mm", MySqlDbType.VarChar).Value = name;
            command.ExecuteNonQuery();
            closeConnection();
        }

        public void wplins(string name)
        {
            openConnection();
            var command = new MySqlCommand(
                "Insert into workplace (workplace_name)" +
                "values (@mm)", conn);
            command.Parameters.Add("@mm", MySqlDbType.VarChar).Value = name;
            command.ExecuteNonQuery();
            closeConnection();
        }

        public void mashupd(int id, int workplase, int type, string name, int invNumber)
        {
            openConnection();
            var command = new MySqlCommand(
                "call machineupdate(@ind,@inv,@wid,@tid,@mm)", conn);
            command.Parameters.Add("@ind", MySqlDbType.Int32).Value = id;
            command.Parameters.Add("@inv", MySqlDbType.Int32).Value = invNumber;
            command.Parameters.Add("@mm", MySqlDbType.VarChar).Value = name;
            command.Parameters.Add("@wid", MySqlDbType.Int32).Value = workplase;
            command.Parameters.Add("@tid", MySqlDbType.Int32).Value = type;
            command.ExecuteNonQuery();
            closeConnection();
        }

        public void typeupd(int id, string name)
        {
            openConnection();
            var command = new MySqlCommand(
                "call typeupdate(@ind,@mm)", conn);
            command.Parameters.Add("@ind", MySqlDbType.Int32).Value = id;
            command.Parameters.Add("@mm", MySqlDbType.VarChar).Value = name;
            command.ExecuteNonQuery();
            closeConnection();
        }

        public void wpupd(int id, string name)
        {
            openConnection();
            var command = new MySqlCommand(
                "call wpupdate(@ind,@mm)", conn);
            command.Parameters.Add("@ind", MySqlDbType.Int32).Value = id;
            command.Parameters.Add("@mm", MySqlDbType.VarChar).Value = name;
            command.ExecuteNonQuery();
            closeConnection();
        }

        public void worplupd(int id, string name)
        {
            openConnection();
            var command = new MySqlCommand(
                "call workplaceupd(@ind,@mm)", conn);
            command.Parameters.Add("@ind", MySqlDbType.Int32).Value = id;
            command.Parameters.Add("@mm", MySqlDbType.VarChar).Value = name;
            command.ExecuteNonQuery();
            closeConnection();
        }

        public void detailins(string detailName, string detailAgregat, string detailImport, byte[] detailImage)
        {
            openConnection();
            var command =
                new MySqlCommand("call detailins(@detailName,@detailAgregat,@detailImport,@detailImage)", conn);
            command.Parameters.Add("@detailName", MySqlDbType.VarChar).Value = detailName;
            command.Parameters.Add("@detailAgregat", MySqlDbType.VarChar).Value = detailAgregat;
            command.Parameters.Add("@detailImport", MySqlDbType.VarChar).Value = detailImport;
            command.Parameters.Add("@detailImage", MySqlDbType.Blob, detailImage.Length).Value = detailImage;
            command.ExecuteNonQuery();
            closeConnection();
        }

        public void drawingins(int detailId, string drawingKod, int chekincumbentId, int createincumbentId)
        {
            openConnection();
            var command =
                new MySqlCommand("call drawingins(@detailId,@drawingKod,@chekincumbentId,@createincumbentId)", conn);
            command.Parameters.Add("@detailId", MySqlDbType.Int32).Value = detailId;
            command.Parameters.Add("@drawingKod", MySqlDbType.VarChar).Value = drawingKod;
            command.Parameters.Add("@chekincumbentId", MySqlDbType.Int32).Value = chekincumbentId;
            command.Parameters.Add("@createincumbentId", MySqlDbType.Int32).Value = createincumbentId;
            command.ExecuteNonQuery();
            closeConnection();
        }

        public void exampleproductins(int detailId, int checkedincumbentId)
        {
            openConnection();
            var command = new MySqlCommand("call exampleproductins(@detailId,@checkedincumbentId)", conn);
            command.Parameters.Add("@detailId", MySqlDbType.Int32).Value = detailId;
            command.Parameters.Add("@checkedincumbentId", MySqlDbType.Int32).Value = checkedincumbentId;
            command.ExecuteNonQuery();
            closeConnection();
        }

        public void incumbentins(string incumbentFamilyName, string incumbentLastName, string incumbentSurnName,
            DateTime incumbentBirthday, DateTime incumbentEmploymentDate, int work_positionId, int workplaceId)
        {
            openConnection();
            var command =
                new MySqlCommand(
                    "call incumbentins(@incumbentFamilyName,@incumbentLastName,@incumbentSurnName,@incumbentBirthday,@incumbentEmploymentDate,@work_positionId,@workplaceId)",
                    conn);
            command.Parameters.Add("@incumbentFamilyName", MySqlDbType.VarChar).Value = incumbentFamilyName;
            command.Parameters.Add("@incumbentLastName", MySqlDbType.VarChar).Value = incumbentLastName;
            command.Parameters.Add("@incumbentSurnName", MySqlDbType.VarChar).Value = incumbentSurnName;
            command.Parameters.Add("@incumbentBirthday", MySqlDbType.Date).Value = incumbentBirthday;
            command.Parameters.Add("@incumbentEmploymentDate", MySqlDbType.Date).Value = incumbentEmploymentDate;
            command.Parameters.Add("@work_positionId", MySqlDbType.Int32).Value = work_positionId;
            command.Parameters.Add("@workplaceId", MySqlDbType.Int32).Value = workplaceId;
            command.ExecuteNonQuery();
            closeConnection();
        }

        public void machineins(int machineInvNumber, string machineModel, int workplaceId, int type_mashineId)
        {
            openConnection();
            var command =
                new MySqlCommand("call machineins(@machineInvNumber,@machineModel,@workplaceId,@type_mashineId)", conn);
            command.Parameters.Add("@machineInvNumber", MySqlDbType.Int32).Value = machineInvNumber;
            command.Parameters.Add("@machineModel", MySqlDbType.VarChar).Value = machineModel;
            command.Parameters.Add("@workplaceId", MySqlDbType.Int32).Value = workplaceId;
            command.Parameters.Add("@type_mashineId", MySqlDbType.Int32).Value = type_mashineId;
            command.ExecuteNonQuery();
            closeConnection();
        }

        public void operationins(int detailId, int mashineID, string operationName, int operationTimeWork,
            int operationNumber)
        {
            openConnection();
            var command =
                new MySqlCommand(
                    "call operationins(@detailId,@machineId,@operationName,@operationTimeWork,@operationNumber)", conn);
            command.Parameters.Add("@detailId", MySqlDbType.Int32).Value = detailId;
            command.Parameters.Add("@operationName", MySqlDbType.VarChar).Value = operationName;
            command.Parameters.Add("@operationTimeWork", MySqlDbType.Int32).Value = operationTimeWork;
            command.Parameters.Add("@operationNumber", MySqlDbType.Int32).Value = operationNumber;
            command.Parameters.Add("@machineId", MySqlDbType.Int32).Value = mashineID;
            command.ExecuteNonQuery();
            closeConnection();
        }

        public void Productins(int operationId, int createincumbentId, string productionStartDate, int exampleProductId)
        {
            openConnection();
            var command =
                new MySqlCommand(
                    "call productionins(@operationId,@createincumbentId,@productionStartDate,@exampleProductId)", conn);
            command.Parameters.Add("@operationId", MySqlDbType.Int32).Value = operationId;
            command.Parameters.Add("@createincumbentId", MySqlDbType.Int32).Value = createincumbentId;
            command.Parameters.Add("@productionStartDate", MySqlDbType.VarChar).Value = productionStartDate;
            command.Parameters.Add("@exampleProductId", MySqlDbType.Int32).Value = exampleProductId;
            command.ExecuteNonQuery();
            closeConnection();
        }

        public void ProductUpd(int operationId, int createincumbentId, string productionStartDate, int exampleProductId,
            int id)
        {
            openConnection();
            var command =
                new MySqlCommand(
                    "call productionupd(@operationId,@createincumbentId,@productionStartDate,@exampleProductId,@id)",
                    conn);
            command.Parameters.Add("@operationId", MySqlDbType.Int32).Value = operationId;
            command.Parameters.Add("@createincumbentId", MySqlDbType.Int32).Value = createincumbentId;
            command.Parameters.Add("@productionStartDate", MySqlDbType.VarChar).Value = productionStartDate;
            command.Parameters.Add("@exampleProductId", MySqlDbType.Int32).Value = exampleProductId;
            command.Parameters.Add("@id", MySqlDbType.Int32).Value = id;
            command.ExecuteNonQuery();
            closeConnection();
        }

        public void operationupd(int detailId, int mashineID, string operationName, int operationTimeWork,
            int operationNumber, int id)
        {
            openConnection();
            var command =
                new MySqlCommand(
                    "call operationset(@detailId,@machineId,@operationName,@operationTimeWork,@operationNumber,@id)",
                    conn);
            command.Parameters.Add("@detailId", MySqlDbType.Int32).Value = detailId;
            command.Parameters.Add("@operationName", MySqlDbType.VarChar).Value = operationName;
            command.Parameters.Add("@operationTimeWork", MySqlDbType.Int32).Value = operationTimeWork;
            command.Parameters.Add("@operationNumber", MySqlDbType.Int32).Value = operationNumber;
            command.Parameters.Add("@machineId", MySqlDbType.Int32).Value = mashineID;
            command.Parameters.Add("@id", MySqlDbType.Int32).Value = id;
            command.ExecuteNonQuery();
            closeConnection();
        }

        public void productionins(int operation_id1, int createincumbent_id1, string production_startDate,
            int exampleProduct_id1)
        {
            openConnection();
            var command =
                new MySqlCommand(
                    "call productionins(@operation_id1,@createincumbent_id1,@production_startDate,@exampleProduct_id1)",
                    conn);
            command.Parameters.Add("@operation_id1", MySqlDbType.Int32).Value = operation_id1;
            command.Parameters.Add("@createincumbent_id1", MySqlDbType.Int32).Value = createincumbent_id1;
            command.Parameters.Add("@production_startDate", MySqlDbType.VarChar).Value = production_startDate;
            command.Parameters.Add("@exampleProduct_id1", MySqlDbType.Int32).Value = exampleProduct_id1;
            command.ExecuteScalar();
            closeConnection();
        }

        public void type_mashineins(string type_mashineName)
        {
            openConnection();
            var command = new MySqlCommand("call type_mashineins(@type_mashineName)", conn);
            command.Parameters.Add("@type_mashineName", MySqlDbType.VarChar).Value = type_mashineName;
            command.ExecuteNonQuery();
            closeConnection();
        }

        public void work_postionins(string work_positionName)
        {
            openConnection();
            var command = new MySqlCommand("call work_postionins(@work_positionName)", conn);
            command.Parameters.Add("@work_positionName", MySqlDbType.VarChar).Value = work_positionName;
            command.ExecuteNonQuery();
            closeConnection();
        }

        public void workplaceins(string workplaceName)
        {
            openConnection();
            var command = new MySqlCommand("call workplaceins(@workplaceName)", conn);
            command.Parameters.Add("@workplaceName", MySqlDbType.VarChar).Value = workplaceName;
            command.ExecuteNonQuery();
            closeConnection();
        }

        public DataTable typeselect()
        {
            var adapter = new MySqlDataAdapter();
            var table = new DataTable();
            openConnection();
            var command = new MySqlCommand("SELECT * FROM type_mashine", conn);
            adapter.SelectCommand = command;
            adapter.Fill(table);
            closeConnection();
            return table;
        }

        public DataTable brakselect()
        {
            var adapter = new MySqlDataAdapter();
            var table = new DataTable();
            openConnection();
            var command = new MySqlCommand("call brakselect()", conn);
            adapter.SelectCommand = command;
            adapter.Fill(table);
            closeConnection();
            return table;
        }

        public DataTable Machineselect()
        {
            var adapter = new MySqlDataAdapter();
            var table = new DataTable();
            openConnection();
            var command = new MySqlCommand("call Machineselect()", conn);
            adapter.SelectCommand = command;
            adapter.Fill(table);
            closeConnection();
            return table;
        }

        public DataTable Productselect()
        {
            var adapter = new MySqlDataAdapter();
            var table = new DataTable();
            openConnection();
            var command = new MySqlCommand("call ProductSelect()", conn);
            adapter.SelectCommand = command;
            adapter.Fill(table);
            closeConnection();
            return table;
        }

        public DataTable Operatonsselect()
        {
            var adapter = new MySqlDataAdapter();
            var table = new DataTable();
            openConnection();
            var command = new MySqlCommand("call OperationSelect()", conn);
            adapter.SelectCommand = command;
            adapter.Fill(table);
            closeConnection();
            return table;
        }

        public void brakdelet(int brak_id)
        {
            openConnection();
            var command = new MySqlCommand("call brakdelet(@brak_id)", conn);
            command.Parameters.Add("@brak_id", MySqlDbType.Int32).Value = brak_id;
            command.ExecuteNonQuery();
            closeConnection();
        }

        public void brakupdate(int brak_id, int incumbent_id, int examplprod_id)
        {
            openConnection();
            var command = new MySqlCommand("call brakupdate(@brak_id,@incumbent_id,@examplprod_id)", conn);
            command.Parameters.Add("@brak_id", MySqlDbType.Int32).Value = brak_id;
            command.Parameters.Add("@incumbent_id", MySqlDbType.Int32).Value = incumbent_id;
            command.Parameters.Add("@examplprod_id", MySqlDbType.Int32).Value = examplprod_id;
            command.ExecuteNonQuery();
            closeConnection();
        }

        public DataTable detailselect()
        {
            var adapter = new MySqlDataAdapter();
            var table = new DataTable();
            openConnection();
            var command = new MySqlCommand("call detailselect()", conn);
            adapter.SelectCommand = command;
            adapter.Fill(table);
            closeConnection();
            return table;
        }

        public DataTable req1(int detId)
        {
            var adapter = new MySqlDataAdapter();
            var table = new DataTable();
            openConnection();
            var command = new MySqlCommand("call TotalTime(@detId)", conn);
            command.Parameters.Add("@detId", MySqlDbType.Int32).Value = detId;
            adapter.SelectCommand = command;
            adapter.Fill(table);
            closeConnection();
            return table;
        }

        public void detaildelet(int detailId)
        {
            openConnection();
            var command = new MySqlCommand("call detaildelet(@detailId)", conn);
            command.Parameters.Add("@detailId", MySqlDbType.Int32).Value = detailId;
            command.ExecuteNonQuery();
            closeConnection();
        }

        public void detailupdate(int DetailID, string detailName, string detailAgregat, string detailImport,
            byte[] detailImage)
        {
            openConnection();
            var command =
                new MySqlCommand("call detailupdate(@DetailID,@detailName,@detailAgregat,@detailImport,@detailImage)",
                    conn);
            command.Parameters.Add("@DetailID", MySqlDbType.Int32).Value = DetailID;
            command.Parameters.Add("@detailName", MySqlDbType.VarChar).Value = detailName;
            command.Parameters.Add("@detailAgregat", MySqlDbType.VarChar).Value = detailAgregat;
            command.Parameters.Add("@detailImport", MySqlDbType.VarChar).Value = detailImport;
            command.Parameters.Add("@detailImage", MySqlDbType.Blob, detailImage.Length).Value = detailImage;
            command.ExecuteNonQuery();
            closeConnection();
        }

        public void incumbentupdate(int incumbentId, string incumbentFamilyName, string incumbentLastName,
            string incumbentSurnName, DateTime incumbentBirthday, DateTime incumbentEmployment_date,
            int work_positionId, int workplaceId)
        {
            openConnection();
            var command =
                new MySqlCommand(
                    "call incumbentupdate(@incumbentId,@incumbentFamilyName,@incumbentLastName,@incumbentSurnName,@incumbentBirthday,@incumbentEmployment_date,@work_positionId,@workplaceId)",
                    conn);
            command.Parameters.Add("@incumbentId", MySqlDbType.Int32).Value = incumbentId;
            command.Parameters.Add("@incumbentFamilyName", MySqlDbType.VarChar).Value = incumbentFamilyName;
            command.Parameters.Add("@incumbentLastName", MySqlDbType.VarChar).Value = incumbentLastName;
            command.Parameters.Add("@incumbentSurnName", MySqlDbType.VarChar).Value = incumbentSurnName;
            command.Parameters.Add("@incumbentBirthday", MySqlDbType.DateTime).Value = incumbentBirthday;
            command.Parameters.Add("@incumbentEmployment_date", MySqlDbType.DateTime).Value = incumbentEmployment_date;
            command.Parameters.Add("@work_positionId", MySqlDbType.DateTime).Value = work_positionId;
            command.Parameters.Add("@workplaceId", MySqlDbType.DateTime).Value = workplaceId;
            command.ExecuteNonQuery();
            closeConnection();
        }

        public void drawingupdate(int id, int detName, string drawing_kod, int chInc, int crIncr)
        {
            openConnection();
            var command =
                new MySqlCommand("call drawinglupdate(@id,@detName,@drawing_kod,@chInc,@crIncr)", conn);
            command.Parameters.Add("@id", MySqlDbType.Int32).Value = id;
            command.Parameters.Add("@detName", MySqlDbType.VarChar).Value = detName;
            command.Parameters.Add("@drawing_kod", MySqlDbType.VarChar).Value = drawing_kod;
            command.Parameters.Add("@chInc", MySqlDbType.VarChar).Value = chInc;
            command.Parameters.Add("@crIncr", MySqlDbType.VarChar).Value = crIncr;
            command.ExecuteNonQuery();
            closeConnection();
        }

        public void exproductdelet(int id)
        {
            openConnection();
            var command = new MySqlCommand("call exproductdelet(@id)", conn);
            command.Parameters.Add("@id", MySqlDbType.Int32).Value = id;
            command.ExecuteNonQuery();
            closeConnection();
        }

        public void exproductupdate(int DetailID, int incumbent, int exProdId)
        {
            openConnection();
            var command = new MySqlCommand("call exproductupdate(@DetailID,@incumbent,@exProdId)", conn);
            command.Parameters.Add("@DetailID", MySqlDbType.Int32).Value = DetailID;
            command.Parameters.Add("@incumbent", MySqlDbType.Int32).Value = incumbent;
            command.Parameters.Add("@exProdId", MySqlDbType.Int32).Value = exProdId;
            command.ExecuteNonQuery();
            closeConnection();
        }

        public void drawingdelet(int drawingId)
        {
            openConnection();
            var command = new MySqlCommand("call drawingdelet(@drawingId)", conn);
            command.Parameters.Add("@drawingId", MySqlDbType.Int32).Value = drawingId;
            command.ExecuteNonQuery();
            closeConnection();
        }

        public void Detaildelet(int drawingId)
        {
            openConnection();
            var command = new MySqlCommand("call detaildelet(@drawingId)", conn);
            command.Parameters.Add("@drawingId", MySqlDbType.Int32).Value = drawingId;
            command.ExecuteNonQuery();
            closeConnection();
        }

        public void MachineDelite(int drawingId)
        {
            openConnection();
            var command = new MySqlCommand("call machinedelet(@drawingId)", conn);
            command.Parameters.Add("@drawingId", MySqlDbType.Int32).Value = drawingId;
            command.ExecuteNonQuery();
            closeConnection();
        }

        public void OperationDelite(int drawingId)
        {
            openConnection();
            var command = new MySqlCommand("call operationdelet(@drawingId)", conn);
            command.Parameters.Add("@drawingId", MySqlDbType.Int32).Value = drawingId;
            command.ExecuteNonQuery();
            closeConnection();
        }

        public void wplDelite(int drawingId)
        {
            openConnection();
            var command = new MySqlCommand("call wpldelet(@drawingId)", conn);
            command.Parameters.Add("@drawingId", MySqlDbType.Int32).Value = drawingId;
            command.ExecuteNonQuery();
            closeConnection();
        }

        public void wposDelite(int drawingId)
        {
            openConnection();
            var command = new MySqlCommand("call wposdelet(@drawingId)", conn);
            command.Parameters.Add("@drawingId", MySqlDbType.Int32).Value = drawingId;
            command.ExecuteNonQuery();
            closeConnection();
        }

        public void ProductionDelite(int drawingId)
        {
            openConnection();
            var command = new MySqlCommand("call Productiondelet(@drawingId)", conn);
            command.Parameters.Add("@drawingId", MySqlDbType.Int32).Value = drawingId;
            command.ExecuteNonQuery();
            closeConnection();
        }

        public void TypeDelite(int drawingId)
        {
            openConnection();
            var command = new MySqlCommand("call typedelet(@drawingId)", conn);
            command.Parameters.Add("@drawingId", MySqlDbType.Int32).Value = drawingId;
            command.ExecuteNonQuery();
            closeConnection();
        }

        public DataTable GetDataTable(string query)
        {
            var adapter = new MySqlDataAdapter();
            var table = new DataTable();
            openConnection();
            var command = new MySqlCommand(query, conn);
            adapter.SelectCommand = command;
            adapter.Fill(table);
            closeConnection();
            return table;
        }

        public void SetDataTable(string query)
        {
            openConnection();
            var command = new MySqlCommand(query, conn);
            command.ExecuteNonQuery();
            closeConnection();
        }

        public void DeletDataTable(string query)
        {
            openConnection();
            var command = new MySqlCommand(query, conn);
            command.ExecuteNonQuery();
            closeConnection();
        }

        public DataTable GetDiagr3(DateTime dateTimeSrt, DateTime dateTimeEnd)
        {
            var adapter = new MySqlDataAdapter();
            var table = new DataTable();
            openConnection();
            var command = new MySqlCommand("call GetIBrakProc(@dateTimeSrt,@dateTimeEnd)", conn);
            command.Parameters.Add("@dateTimeSrt", MySqlDbType.DateTime).Value = dateTimeSrt;
            command.Parameters.Add("@dateTimeEnd", MySqlDbType.DateTime).Value = dateTimeEnd;
            adapter.SelectCommand = command;
            adapter.Fill(table);
            closeConnection();
            return table;
        }

        public DataTable HallOfFame()
        {
            var adapter = new MySqlDataAdapter();
            var table = new DataTable();
            openConnection();
            var command = new MySqlCommand("call HallOfFame()", conn);
            adapter.SelectCommand = command;
            adapter.Fill(table);
            closeConnection();
            return table;
        }

        public DataTable ProductionForThePeriod(DateTime DateBgn, DateTime DateEnd)
        {
            var adapter = new MySqlDataAdapter();
            var table = new DataTable();
            openConnection();
            var command = new MySqlCommand("call ProductionForThePeriod(@DateBgn,@DateEnd)", conn);
            command.Parameters.Add("@DateBgn", MySqlDbType.DateTime).Value = DateBgn;
            command.Parameters.Add("@DateEnd", MySqlDbType.DateTime).Value = DateEnd;
            adapter.SelectCommand = command;
            adapter.Fill(table);
            closeConnection();
            return table;
        }

        public DataTable UnfinishedProduction()
        {
            var adapter = new MySqlDataAdapter();
            var table = new DataTable();
            openConnection();
            var command = new MySqlCommand("call UnfinishedProduction()", conn);
            adapter.SelectCommand = command;
            adapter.Fill(table);
            closeConnection();
            return table;
        }

        public DataTable ShameBoard()
        {
            var adapter = new MySqlDataAdapter();
            var table = new DataTable();
            openConnection();
            var command = new MySqlCommand("call ShameBoard()", conn);
            adapter.SelectCommand = command;
            adapter.Fill(table);
            closeConnection();
            return table;
        }
    }
}