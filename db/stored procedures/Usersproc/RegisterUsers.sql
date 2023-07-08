CREATE OR ALTER PROCEDURE RegisterUser(
    @UserId INT,
    @FirstName NVARCHAR(200),
    @LastName NVARCHAR(200),
    @Email NVARCHAR(50),
    @PhoneNumber NVARCHAR(20),
    @PasswordHash NVARCHAR(255),
    @ResetToken NVARCHAR(255),
    @IsActive BIT,
    @ActivationDTM DATETIME2,
    @IsDeleted BIT,
    @DeletedDTM DATETIME2,
    @DeletedBy BIGINT,
    @CreatedDTM DATETIME2,
    @CreatedBy BIT,
    @UpdatedDTM DATETIME2,
    @UpdatedBy BIGINT,
    @RowVersion TIMESTAMP
) 
AS
BEGIN
    SET NOCOUNT ON;
    INSERT INTO Users (
        UserId,
        FirstName,
        LastName,
        Email,
        PhoneNumber,
        PasswordHash,
        ResetToken,
        IsActive,
        ActivationDTM,
        IsDeleted,
        DeletedDTM,
        DeletedBy,
        CreatedDTM,
        CreatedBy,
        UpdatedDTM,
        UpdatedBy,
        RowVersion
    ) VALUES (
        @UserId,
        @FirstName,
        @LastName,
        @Email,
        @PhoneNumber,
        @PasswordHash,
        @ResetToken,
        @IsActive,
        @ActivationDTM,
        @IsDeleted,
        @DeletedDTM,
        @DeletedBy,
        @CreatedDTM,
        @CreatedBy,
        @UpdatedDTM,
        @UpdatedBy,
        @RowVersion
    );
END
    
    