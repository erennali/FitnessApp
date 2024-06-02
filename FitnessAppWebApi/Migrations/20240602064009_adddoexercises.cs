using System;
using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace FitnessAppWebApi.Migrations
{
    /// <inheritdoc />
    public partial class adddoexercises : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<DateTime>(
                name: "DoExercises",
                table: "Users",
                type: "datetime2",
                nullable: true);
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "DoExercises",
                table: "Users");
        }
    }
}
