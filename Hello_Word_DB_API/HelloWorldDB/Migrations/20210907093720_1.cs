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

            migrationBuilder.CreateTable(
                name: "Link",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Content = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    Name = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    UserId = table.Column<int>(type: "int", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Link", x => x.Id);
                    table.ForeignKey(
                        name: "FK_Link_Users_UserId",
                        column: x => x.UserId,
                        principalTable: "Users",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.InsertData(
                table: "Users",
                columns: new[] { "Id", "Email", "PassWord", "UserName" },
                values: new object[] { 1, "josander.erik@gmail.com", "Bas98Pmar", "Erik" });

            migrationBuilder.InsertData(
                table: "Users",
                columns: new[] { "Id", "Email", "PassWord", "UserName" },
                values: new object[] { 2, "Alex@gmail.com", "alex", "Alex" });

            migrationBuilder.InsertData(
                table: "Link",
                columns: new[] { "Id", "Content", "Name", "UserId" },
                values: new object[] { 1, "Https://google.com", "Google", 1 });

            migrationBuilder.CreateIndex(
                name: "IX_Link_UserId",
                table: "Link",
                column: "UserId");
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "Link");

            migrationBuilder.DropTable(
                name: "Users");
        }
    }
}
