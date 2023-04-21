.class public Ljcifs/smb/NtlmContext;
.super Ljava/lang/Object;
.source "NtlmContext.java"


# instance fields
.field auth:Ljcifs/smb/NtlmPasswordAuthentication;

.field isEstablished:Z

.field log:Ljcifs/util/LogStream;

.field netbiosName:Ljava/lang/String;

.field ntlmsspFlags:I

.field serverChallenge:[B

.field signingKey:[B

.field state:I

.field workstation:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljcifs/smb/NtlmPasswordAuthentication;Z)V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput-boolean v0, p0, Ljcifs/smb/NtlmContext;->isEstablished:Z

    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Ljcifs/smb/NtlmContext;->serverChallenge:[B

    .line 40
    iput-object v0, p0, Ljcifs/smb/NtlmContext;->signingKey:[B

    .line 41
    iput-object v0, p0, Ljcifs/smb/NtlmContext;->netbiosName:Ljava/lang/String;

    const/4 v0, 0x1

    .line 42
    iput v0, p0, Ljcifs/smb/NtlmContext;->state:I

    .line 46
    iput-object p1, p0, Ljcifs/smb/NtlmContext;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    .line 47
    iget p1, p0, Ljcifs/smb/NtlmContext;->ntlmsspFlags:I

    or-int/lit8 p1, p1, 0x4

    const/high16 v0, 0x80000

    or-int/2addr p1, v0

    const/high16 v0, 0x20000000

    or-int/2addr p1, v0

    iput p1, p0, Ljcifs/smb/NtlmContext;->ntlmsspFlags:I

    if-eqz p2, :cond_0

    const p2, 0x40008010

    or-int/2addr p1, p2

    .line 52
    iput p1, p0, Ljcifs/smb/NtlmContext;->ntlmsspFlags:I

    .line 56
    :cond_0
    invoke-static {}, Ljcifs/ntlmssp/Type1Message;->getDefaultWorkstation()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ljcifs/smb/NtlmContext;->workstation:Ljava/lang/String;

    .line 57
    invoke-static {}, Ljcifs/util/LogStream;->getInstance()Ljcifs/util/LogStream;

    move-result-object p1

    iput-object p1, p0, Ljcifs/smb/NtlmContext;->log:Ljcifs/util/LogStream;

    return-void
.end method

.method private getNtlmsspListItem([BI)Ljava/lang/String;
    .locals 5

    const/16 v0, 0x3a

    .line 103
    :goto_0
    invoke-static {p1, v0}, Ljcifs/util/Encdec;->dec_uint16le([BI)S

    move-result v1

    add-int/lit8 v2, v0, 0x2

    .line 104
    invoke-static {p1, v2}, Ljcifs/util/Encdec;->dec_uint16le([BI)S

    move-result v2

    add-int/lit8 v0, v0, 0x4

    if-eqz v1, :cond_2

    add-int v3, v0, v2

    .line 106
    array-length v4, p1

    if-le v3, v4, :cond_0

    goto :goto_1

    :cond_0
    if-ne v1, p2, :cond_1

    .line 110
    :try_start_0
    new-instance p2, Ljava/lang/String;

    const-string v1, "UTF-16LE"

    invoke-direct {p2, p1, v0, v2, v1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :cond_1
    move v0, v3

    goto :goto_0

    :catch_0
    :cond_2
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public getNetbiosName()Ljava/lang/String;
    .locals 1

    .line 95
    iget-object v0, p0, Ljcifs/smb/NtlmContext;->netbiosName:Ljava/lang/String;

    return-object v0
.end method

.method public getServerChallenge()[B
    .locals 1

    .line 87
    iget-object v0, p0, Ljcifs/smb/NtlmContext;->serverChallenge:[B

    return-object v0
.end method

.method public getSigningKey()[B
    .locals 1

    .line 91
    iget-object v0, p0, Ljcifs/smb/NtlmContext;->signingKey:[B

    return-object v0
.end method

.method public initSecContext([BII)[B
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbException;
        }
    .end annotation

    .line 121
    iget p2, p0, Ljcifs/smb/NtlmContext;->state:I

    const/4 p3, 0x0

    const/4 v0, 0x6

    const/4 v1, 0x4

    const/4 v2, 0x1

    if-eq p2, v2, :cond_4

    const/4 v3, 0x2

    if-ne p2, v3, :cond_3

    .line 136
    :try_start_0
    new-instance v5, Ljcifs/ntlmssp/Type2Message;

    invoke-direct {v5, p1}, Ljcifs/ntlmssp/Type2Message;-><init>([B)V

    .line 138
    sget p2, Ljcifs/util/LogStream;->level:I

    if-lt p2, v1, :cond_0

    .line 139
    iget-object p2, p0, Ljcifs/smb/NtlmContext;->log:Ljcifs/util/LogStream;

    invoke-virtual {p2, v5}, Ljcifs/util/LogStream;->println(Ljava/lang/Object;)V

    .line 140
    sget p2, Ljcifs/util/LogStream;->level:I

    if-lt p2, v0, :cond_0

    .line 141
    iget-object p2, p0, Ljcifs/smb/NtlmContext;->log:Ljcifs/util/LogStream;

    array-length v3, p1

    invoke-static {p2, p1, p3, v3}, Ljcifs/util/Hexdump;->hexdump(Ljava/io/PrintStream;[BII)V

    .line 144
    :cond_0
    invoke-virtual {v5}, Ljcifs/ntlmssp/Type2Message;->getChallenge()[B

    move-result-object p1

    iput-object p1, p0, Ljcifs/smb/NtlmContext;->serverChallenge:[B

    .line 145
    iget p1, p0, Ljcifs/smb/NtlmContext;->ntlmsspFlags:I

    invoke-virtual {v5}, Ljcifs/ntlmssp/Type2Message;->getFlags()I

    move-result p2

    and-int/2addr p1, p2

    iput p1, p0, Ljcifs/smb/NtlmContext;->ntlmsspFlags:I

    .line 149
    new-instance p1, Ljcifs/ntlmssp/Type3Message;

    iget-object p2, p0, Ljcifs/smb/NtlmContext;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    invoke-virtual {p2}, Ljcifs/smb/NtlmPasswordAuthentication;->getPassword()Ljava/lang/String;

    move-result-object v6

    iget-object p2, p0, Ljcifs/smb/NtlmContext;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    invoke-virtual {p2}, Ljcifs/smb/NtlmPasswordAuthentication;->getDomain()Ljava/lang/String;

    move-result-object v7

    iget-object p2, p0, Ljcifs/smb/NtlmContext;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    invoke-virtual {p2}, Ljcifs/smb/NtlmPasswordAuthentication;->getUsername()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Ljcifs/smb/NtlmContext;->workstation:Ljava/lang/String;

    iget v10, p0, Ljcifs/smb/NtlmContext;->ntlmsspFlags:I

    move-object v4, p1

    invoke-direct/range {v4 .. v10}, Ljcifs/ntlmssp/Type3Message;-><init>(Ljcifs/ntlmssp/Type2Message;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 155
    invoke-virtual {p1}, Ljcifs/ntlmssp/Type3Message;->toByteArray()[B

    move-result-object p2

    .line 157
    sget v3, Ljcifs/util/LogStream;->level:I

    if-lt v3, v1, :cond_1

    .line 158
    iget-object v1, p0, Ljcifs/smb/NtlmContext;->log:Ljcifs/util/LogStream;

    invoke-virtual {v1, p1}, Ljcifs/util/LogStream;->println(Ljava/lang/Object;)V

    .line 159
    sget v1, Ljcifs/util/LogStream;->level:I

    if-lt v1, v0, :cond_1

    .line 160
    iget-object v0, p0, Ljcifs/smb/NtlmContext;->log:Ljcifs/util/LogStream;

    array-length v1, p2

    invoke-static {v0, p2, p3, v1}, Ljcifs/util/Hexdump;->hexdump(Ljava/io/PrintStream;[BII)V

    .line 163
    :cond_1
    iget p3, p0, Ljcifs/smb/NtlmContext;->ntlmsspFlags:I

    and-int/lit8 p3, p3, 0x10

    if-eqz p3, :cond_2

    .line 164
    invoke-virtual {p1}, Ljcifs/ntlmssp/Type3Message;->getMasterKey()[B

    move-result-object p1

    iput-object p1, p0, Ljcifs/smb/NtlmContext;->signingKey:[B

    .line 166
    :cond_2
    iput-boolean v2, p0, Ljcifs/smb/NtlmContext;->isEstablished:Z

    .line 167
    iget p1, p0, Ljcifs/smb/NtlmContext;->state:I

    add-int/2addr p1, v2

    iput p1, p0, Ljcifs/smb/NtlmContext;->state:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 170
    new-instance p2, Ljcifs/smb/SmbException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 173
    :cond_3
    new-instance p1, Ljcifs/smb/SmbException;

    const-string p2, "Invalid state"

    invoke-direct {p1, p2}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 123
    :cond_4
    new-instance p1, Ljcifs/ntlmssp/Type1Message;

    iget p2, p0, Ljcifs/smb/NtlmContext;->ntlmsspFlags:I

    iget-object v3, p0, Ljcifs/smb/NtlmContext;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    invoke-virtual {v3}, Ljcifs/smb/NtlmPasswordAuthentication;->getDomain()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Ljcifs/smb/NtlmContext;->workstation:Ljava/lang/String;

    invoke-direct {p1, p2, v3, v4}, Ljcifs/ntlmssp/Type1Message;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 124
    invoke-virtual {p1}, Ljcifs/ntlmssp/Type1Message;->toByteArray()[B

    move-result-object p2

    .line 126
    sget v3, Ljcifs/util/LogStream;->level:I

    if-lt v3, v1, :cond_5

    .line 127
    iget-object v1, p0, Ljcifs/smb/NtlmContext;->log:Ljcifs/util/LogStream;

    invoke-virtual {v1, p1}, Ljcifs/util/LogStream;->println(Ljava/lang/Object;)V

    .line 128
    sget p1, Ljcifs/util/LogStream;->level:I

    if-lt p1, v0, :cond_5

    .line 129
    iget-object p1, p0, Ljcifs/smb/NtlmContext;->log:Ljcifs/util/LogStream;

    array-length v0, p2

    invoke-static {p1, p2, p3, v0}, Ljcifs/util/Hexdump;->hexdump(Ljava/io/PrintStream;[BII)V

    .line 132
    :cond_5
    iget p1, p0, Ljcifs/smb/NtlmContext;->state:I

    add-int/2addr p1, v2

    iput p1, p0, Ljcifs/smb/NtlmContext;->state:I

    :goto_0
    return-object p2
.end method

.method public isEstablished()Z
    .locals 1

    .line 83
    iget-boolean v0, p0, Ljcifs/smb/NtlmContext;->isEstablished:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NtlmContext[auth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljcifs/smb/NtlmContext;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",ntlmsspFlags=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljcifs/smb/NtlmContext;->ntlmsspFlags:I

    const/16 v2, 0x8

    invoke-static {v1, v2}, Ljcifs/util/Hexdump;->toHexString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",workstation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljcifs/smb/NtlmContext;->workstation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",isEstablished="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Ljcifs/smb/NtlmContext;->isEstablished:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljcifs/smb/NtlmContext;->state:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",serverChallenge="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 67
    iget-object v1, p0, Ljcifs/smb/NtlmContext;->serverChallenge:[B

    const-string v2, "null"

    const/4 v3, 0x0

    if-nez v1, :cond_0

    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 70
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljcifs/smb/NtlmContext;->serverChallenge:[B

    array-length v4, v1

    mul-int/lit8 v4, v4, 0x2

    invoke-static {v1, v3, v4}, Ljcifs/util/Hexdump;->toHexString([BII)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 72
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",signingKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 73
    iget-object v1, p0, Ljcifs/smb/NtlmContext;->signingKey:[B

    if-nez v1, :cond_1

    .line 74
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 76
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljcifs/smb/NtlmContext;->signingKey:[B

    array-length v2, v1

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v1, v3, v2}, Ljcifs/util/Hexdump;->toHexString([BII)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 78
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
