.class Ljcifs/smb/SmbComFindClose2;
.super Ljcifs/smb/ServerMessageBlock;
.source "SmbComFindClose2.java"


# instance fields
.field private sid:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljcifs/smb/ServerMessageBlock;-><init>()V

    .line 26
    iput p1, p0, Ljcifs/smb/SmbComFindClose2;->sid:I

    const/16 p1, 0x34

    .line 27
    iput-byte p1, p0, Ljcifs/smb/SmbComFindClose2;->command:B

    return-void
.end method


# virtual methods
.method readBytesWireFormat([BI)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method readParameterWordsWireFormat([BI)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 44
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SmbComFindClose2["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-super {p0}, Ljcifs/smb/ServerMessageBlock;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",sid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljcifs/smb/SmbComFindClose2;->sid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method writeBytesWireFormat([BI)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method writeParameterWordsWireFormat([BI)I
    .locals 2

    .line 31
    iget v0, p0, Ljcifs/smb/SmbComFindClose2;->sid:I

    int-to-long v0, v0

    invoke-static {v0, v1, p1, p2}, Ljcifs/smb/SmbComFindClose2;->writeInt2(J[BI)V

    const/4 p1, 0x2

    return p1
.end method
