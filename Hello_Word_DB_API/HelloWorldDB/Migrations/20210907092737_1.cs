using Microsoft.EntityFrameworkCore.Migrations;

namespace HelloWorldDB.Migrations
{
    public partial class _1 : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "Users",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    UserName = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    PassWord = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    Email = table.Column<string>(type: "nvarchar(max)", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Users", x => x.Id);
                });

            migrationBuilder.InsertData(
                table: "Users",
                columns: new[] { "Id", "Email", "PassWord", "UserName" },
                values: new object[] { 1, "josander.erik@gmail.com", "Bas98Pmar", "Erik" });

            migrationBuilder.InsertData(
                table: "Users",
                columns: new[] { "Id", "Email", "PassWord", "UserName" },
                values: new object[] { 2, "Alex@gmail.com", "alex", "Alex" });
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "Users");
        }
    }
}
