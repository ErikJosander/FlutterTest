using Microsoft.EntityFrameworkCore.Migrations;

namespace HelloWorldDB.Migrations
{
    public partial class init1 : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.UpdateData(
                table: "AspNetRoles",
                keyColumn: "Id",
                keyValue: "ad376a8f-9eab-4bb9-9fca-30b01540f445",
                column: "ConcurrencyStamp",
                value: "fc402a89-30cc-42a3-b714-f030347e9a0a");

            migrationBuilder.UpdateData(
                table: "AspNetRoles",
                keyColumn: "Id",
                keyValue: "dt366y8f-78ab-4jh9-18ca-w35hfddffd45",
                column: "ConcurrencyStamp",
                value: "6928766f-63de-40d4-a1a2-4ae48955e93a");

            migrationBuilder.UpdateData(
                table: "AspNetUsers",
                keyColumn: "Id",
                keyValue: "a18679c0-kk60-4uty-of17-00324348eder3",
                columns: new[] { "ConcurrencyStamp", "PasswordHash" },
                values: new object[] { "4232d1ac-fd86-473b-9c2d-4f0353749c60", "AQAAAAEAACcQAAAAEJUJ16XyxNxvMe8pBhJII2WKtTMLVjTS8FLc4lBRO3ifdJttARnUeUnZQ0qQd3dKrw==" });

            migrationBuilder.UpdateData(
                table: "AspNetUsers",
                keyColumn: "Id",
                keyValue: "a18be9c0-aa65-4af8-bd17-00bd9344e575",
                columns: new[] { "ConcurrencyStamp", "PasswordHash" },
                values: new object[] { "df0bada2-379c-4cdc-9b2f-84cbf09ff813", "AQAAAAEAACcQAAAAEAog9hoNEHlgx94ci4H3+Q8w3eGRYb4WBDSUobOH/h4Lz41SyMuN8qXdADMkZgy0mw==" });
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.UpdateData(
                table: "AspNetRoles",
                keyColumn: "Id",
                keyValue: "ad376a8f-9eab-4bb9-9fca-30b01540f445",
                column: "ConcurrencyStamp",
                value: "ddf9b077-d9f0-4efa-81c4-9ed69aa4d219");

            migrationBuilder.UpdateData(
                table: "AspNetRoles",
                keyColumn: "Id",
                keyValue: "dt366y8f-78ab-4jh9-18ca-w35hfddffd45",
                column: "ConcurrencyStamp",
                value: "359a8f9c-1697-461e-b9da-a16a35c44b7e");

            migrationBuilder.UpdateData(
                table: "AspNetUsers",
                keyColumn: "Id",
                keyValue: "a18679c0-kk60-4uty-of17-00324348eder3",
                columns: new[] { "ConcurrencyStamp", "PasswordHash" },
                values: new object[] { "85d5ab3a-7d58-4997-bbd5-76c729dcf152", "AQAAAAEAACcQAAAAEMS6AZTzw3ZPl2Iv/2qNeHklIkMCUCs5C1gKUCvpKJVOFctUajdFhFybf6Rf/N5gfQ==" });

            migrationBuilder.UpdateData(
                table: "AspNetUsers",
                keyColumn: "Id",
                keyValue: "a18be9c0-aa65-4af8-bd17-00bd9344e575",
                columns: new[] { "ConcurrencyStamp", "PasswordHash" },
                values: new object[] { "cc3468a0-b588-462e-8b13-e463c0126369", "AQAAAAEAACcQAAAAEAlC8MLAvppXE73k8poCd88irFxeYiFEtmq4mC0Yy8lRStUk5wpw3No6k7+XwK6NWw==" });
        }
    }
}
