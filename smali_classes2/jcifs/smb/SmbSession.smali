.class public final Ljcifs/smb/SmbSession;
.super Ljava/lang/Object;
.source "SmbSession.java"


# static fields
.field private static final CACHE_POLICY:I

.field private static final DOMAIN:Ljava/lang/String;

.field private static final LOGON_SHARE:Ljava/lang/String;

.field private static final LOOKUP_RESP_LIMIT:I

.field private static final USERNAME:Ljava/lang/String;

.field static dc_list:[Ljcifs/netbios/NbtAddress;

.field static dc_list_counter:I

.field static dc_list_expiration:J


# instance fields
.field private address:Ljcifs/UniAddress;

.field auth:Ljcifs/smb/NtlmPasswordAuthentication;

.field connectionState:I

.field expiration:J

.field private localAddr:Ljava/net/InetAddress;

.field private localPort:I

.field netbiosName:Ljava/lang/String;

.field private port:I

.field transport:Ljcifs/smb/SmbTransport;

.field trees:Ljava/util/Vector;

.field uid:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "jcifs.smb.client.logonShare"

    const/4 v1, 0x0

    .line 33
    invoke-static {v0, v1}, Ljcifs/Config;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljcifs/smb/SmbSession;->LOGON_SHARE:Ljava/lang/String;

    const-string v0, "jcifs.netbios.lookupRespLimit"

    const/4 v2, 0x3

    .line 35
    invoke-static {v0, v2}, Ljcifs/Config;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Ljcifs/smb/SmbSession;->LOOKUP_RESP_LIMIT:I

    const-string v0, "jcifs.smb.client.domain"

    .line 37
    invoke-static {v0, v1}, Ljcifs/Config;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljcifs/smb/SmbSession;->DOMAIN:Ljava/lang/String;

    const-string v0, "jcifs.smb.client.username"

    .line 39
    invoke-static {v0, v1}, Ljcifs/Config;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljcifs/smb/SmbSession;->USERNAME:Ljava/lang/String;

    const-string v0, "jcifs.netbios.cachePolicy"

    const/16 v2, 0x258

    .line 41
    invoke-static {v0, v2}, Ljcifs/Config;->getInt(Ljava/lang/String;I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x3c

    sput v0, Ljcifs/smb/SmbSession;->CACHE_POLICY:I

    .line 44
    sput-object v1, Ljcifs/smb/SmbSession;->dc_list:[Ljcifs/netbios/NbtAddress;

    return-void
.end method

.method constructor <init>(Ljcifs/UniAddress;ILjava/net/InetAddress;ILjcifs/smb/NtlmPasswordAuthentication;)V
    .locals 1

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 168
    iput-object v0, p0, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    .line 171
    iput-object v0, p0, Ljcifs/smb/SmbSession;->netbiosName:Ljava/lang/String;

    .line 176
    iput-object p1, p0, Ljcifs/smb/SmbSession;->address:Ljcifs/UniAddress;

    .line 177
    iput p2, p0, Ljcifs/smb/SmbSession;->port:I

    .line 178
    iput-object p3, p0, Ljcifs/smb/SmbSession;->localAddr:Ljava/net/InetAddress;

    .line 179
    iput p4, p0, Ljcifs/smb/SmbSession;->localPort:I

    .line 180
    iput-object p5, p0, Ljcifs/smb/SmbSession;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    .line 181
    new-instance p1, Ljava/util/Vector;

    invoke-direct {p1}, Ljava/util/Vector;-><init>()V

    iput-object p1, p0, Ljcifs/smb/SmbSession;->trees:Ljava/util/Vector;

    const/4 p1, 0x0

    .line 182
    iput p1, p0, Ljcifs/smb/SmbSession;->connectionState:I

    return-void
.end method

.method public static getChallenge(Ljcifs/UniAddress;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 118
    invoke-static {p0, v0}, Ljcifs/smb/SmbSession;->getChallenge(Ljcifs/UniAddress;I)[B

    move-result-object p0

    return-object p0
.end method

.method public static getChallenge(Ljcifs/UniAddress;I)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 123
    invoke-static {p0, p1}, Ljcifs/smb/SmbTransport;->getSmbTransport(Ljcifs/UniAddress;I)Ljcifs/smb/SmbTransport;

    move-result-object p0

    .line 124
    invoke-virtual {p0}, Ljcifs/smb/SmbTransport;->connect()V

    .line 125
    iget-object p0, p0, Ljcifs/smb/SmbTransport;->server:Ljcifs/smb/SmbTransport$ServerData;

    iget-object p0, p0, Ljcifs/smb/SmbTransport$ServerData;->encryptionKey:[B

    return-object p0
.end method

.method public static getChallengeForDomain()Ljcifs/smb/NtlmChallenge;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 66
    sget-object v0, Ljcifs/smb/SmbSession;->DOMAIN:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 69
    monitor-enter v0

    .line 70
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const/4 v3, 0x1

    .line 74
    :goto_0
    sget-wide v4, Ljcifs/smb/SmbSession;->dc_list_expiration:J

    cmp-long v4, v4, v1

    const-wide/32 v5, 0xdbba0

    const/4 v7, 0x2

    const/4 v8, 0x0

    if-gez v4, :cond_1

    .line 75
    sget-object v4, Ljcifs/smb/SmbSession;->DOMAIN:Ljava/lang/String;

    const/16 v9, 0x1c

    invoke-static {v4, v9, v8, v8}, Ljcifs/netbios/NbtAddress;->getAllByName(Ljava/lang/String;ILjava/lang/String;Ljava/net/InetAddress;)[Ljcifs/netbios/NbtAddress;

    move-result-object v4

    .line 76
    sget v9, Ljcifs/smb/SmbSession;->CACHE_POLICY:I

    int-to-long v9, v9

    const-wide/16 v11, 0x3e8

    mul-long/2addr v9, v11

    add-long/2addr v9, v1

    sput-wide v9, Ljcifs/smb/SmbSession;->dc_list_expiration:J

    if-eqz v4, :cond_0

    .line 77
    array-length v9, v4

    if-lez v9, :cond_0

    .line 78
    sput-object v4, Ljcifs/smb/SmbSession;->dc_list:[Ljcifs/netbios/NbtAddress;

    goto :goto_1

    :cond_0
    add-long v9, v1, v5

    .line 80
    sput-wide v9, Ljcifs/smb/SmbSession;->dc_list_expiration:J

    .line 81
    sget-object v4, Ljcifs/smb/SmbTransport;->log:Ljcifs/util/LogStream;

    sget v4, Ljcifs/util/LogStream;->level:I

    if-lt v4, v7, :cond_1

    .line 82
    sget-object v4, Ljcifs/smb/SmbTransport;->log:Ljcifs/util/LogStream;

    const-string v9, "Failed to retrieve DC list from WINS"

    invoke-virtual {v4, v9}, Ljcifs/util/LogStream;->println(Ljava/lang/String;)V

    .line 87
    :cond_1
    :goto_1
    sget-object v4, Ljcifs/smb/SmbSession;->dc_list:[Ljcifs/netbios/NbtAddress;

    array-length v4, v4

    sget v9, Ljcifs/smb/SmbSession;->LOOKUP_RESP_LIMIT:I

    invoke-static {v4, v9}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/4 v9, 0x0

    :goto_2
    if-ge v9, v4, :cond_4

    .line 89
    sget v10, Ljcifs/smb/SmbSession;->dc_list_counter:I

    add-int/lit8 v11, v10, 0x1

    sput v11, Ljcifs/smb/SmbSession;->dc_list_counter:I

    rem-int/2addr v10, v4

    .line 90
    sget-object v11, Ljcifs/smb/SmbSession;->dc_list:[Ljcifs/netbios/NbtAddress;

    aget-object v12, v11, v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v12, :cond_3

    .line 92
    :try_start_1
    aget-object v11, v11, v10

    invoke-static {v11}, Ljcifs/smb/SmbSession;->interrogate(Ljcifs/netbios/NbtAddress;)Ljcifs/smb/NtlmChallenge;

    move-result-object v1
    :try_end_1
    .catch Ljcifs/smb/SmbException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return-object v1

    :catch_0
    move-exception v11

    .line 94
    sget-object v12, Ljcifs/smb/SmbTransport;->log:Ljcifs/util/LogStream;

    sget v12, Ljcifs/util/LogStream;->level:I

    if-lt v12, v7, :cond_2

    .line 95
    sget-object v12, Ljcifs/smb/SmbTransport;->log:Ljcifs/util/LogStream;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Failed validate DC: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-object v14, Ljcifs/smb/SmbSession;->dc_list:[Ljcifs/netbios/NbtAddress;

    aget-object v14, v14, v10

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljcifs/util/LogStream;->println(Ljava/lang/String;)V

    .line 96
    sget-object v12, Ljcifs/smb/SmbTransport;->log:Ljcifs/util/LogStream;

    sget v12, Ljcifs/util/LogStream;->level:I

    if-le v12, v7, :cond_2

    .line 97
    sget-object v12, Ljcifs/smb/SmbTransport;->log:Ljcifs/util/LogStream;

    invoke-virtual {v11, v12}, Ljcifs/smb/SmbException;->printStackTrace(Ljava/io/PrintStream;)V

    .line 100
    :cond_2
    sget-object v11, Ljcifs/smb/SmbSession;->dc_list:[Ljcifs/netbios/NbtAddress;

    aput-object v8, v11, v10

    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_4
    const-wide/16 v7, 0x0

    .line 106
    sput-wide v7, Ljcifs/smb/SmbSession;->dc_list_expiration:J

    add-int/lit8 v4, v3, -0x1

    if-lez v3, :cond_5

    move v3, v4

    goto/16 :goto_0

    :cond_5
    add-long/2addr v1, v5

    .line 109
    sput-wide v1, Ljcifs/smb/SmbSession;->dc_list_expiration:J

    .line 110
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 112
    new-instance v0, Ljava/net/UnknownHostException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to negotiate with a suitable domain controller for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljcifs/smb/SmbSession;->DOMAIN:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v1

    .line 110
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 67
    :cond_6
    new-instance v0, Ljcifs/smb/SmbException;

    const-string v1, "A domain was not specified"

    invoke-direct {v0, v1}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static interrogate(Ljcifs/netbios/NbtAddress;)Ljcifs/smb/NtlmChallenge;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbException;
        }
    .end annotation

    .line 49
    new-instance v0, Ljcifs/UniAddress;

    invoke-direct {v0, p0}, Ljcifs/UniAddress;-><init>(Ljava/lang/Object;)V

    const/4 p0, 0x0

    .line 50
    invoke-static {v0, p0}, Ljcifs/smb/SmbTransport;->getSmbTransport(Ljcifs/UniAddress;I)Ljcifs/smb/SmbTransport;

    move-result-object p0

    .line 51
    sget-object v1, Ljcifs/smb/SmbSession;->USERNAME:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 52
    invoke-virtual {p0}, Ljcifs/smb/SmbTransport;->connect()V

    .line 53
    sget-object v1, Ljcifs/smb/SmbTransport;->log:Ljcifs/util/LogStream;

    sget v1, Ljcifs/util/LogStream;->level:I

    const/4 v2, 0x3

    if-lt v1, v2, :cond_1

    .line 54
    sget-object v1, Ljcifs/smb/SmbTransport;->log:Ljcifs/util/LogStream;

    const-string v2, "Default credentials (jcifs.smb.client.username/password) not specified. SMB signing may not work propertly.  Skipping DC interrogation."

    invoke-virtual {v1, v2}, Ljcifs/util/LogStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 59
    :cond_0
    sget-object v1, Ljcifs/smb/NtlmPasswordAuthentication;->DEFAULT:Ljcifs/smb/NtlmPasswordAuthentication;

    invoke-virtual {p0, v1}, Ljcifs/smb/SmbTransport;->getSmbSession(Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/smb/SmbSession;

    move-result-object v1

    .line 60
    sget-object v2, Ljcifs/smb/SmbSession;->LOGON_SHARE:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljcifs/smb/SmbSession;->getSmbTree(Ljava/lang/String;Ljava/lang/String;)Ljcifs/smb/SmbTree;

    move-result-object v1

    invoke-virtual {v1, v3, v3}, Ljcifs/smb/SmbTree;->treeConnect(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    .line 62
    :cond_1
    :goto_0
    new-instance v1, Ljcifs/smb/NtlmChallenge;

    iget-object p0, p0, Ljcifs/smb/SmbTransport;->server:Ljcifs/smb/SmbTransport$ServerData;

    iget-object p0, p0, Ljcifs/smb/SmbTransport$ServerData;->encryptionKey:[B

    invoke-direct {v1, p0, v0}, Ljcifs/smb/NtlmChallenge;-><init>([BLjcifs/UniAddress;)V

    return-object v1
.end method

.method public static logon(Ljcifs/UniAddress;ILjcifs/smb/NtlmPasswordAuthentication;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbException;
        }
    .end annotation

    .line 145
    invoke-static {p0, p1}, Ljcifs/smb/SmbTransport;->getSmbTransport(Ljcifs/UniAddress;I)Ljcifs/smb/SmbTransport;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljcifs/smb/SmbTransport;->getSmbSession(Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/smb/SmbSession;

    move-result-object p0

    sget-object p1, Ljcifs/smb/SmbSession;->LOGON_SHARE:Ljava/lang/String;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Ljcifs/smb/SmbSession;->getSmbTree(Ljava/lang/String;Ljava/lang/String;)Ljcifs/smb/SmbTree;

    move-result-object p0

    if-nez p1, :cond_0

    .line 147
    invoke-virtual {p0, p2, p2}, Ljcifs/smb/SmbTree;->treeConnect(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    goto :goto_0

    .line 149
    :cond_0
    new-instance p1, Ljcifs/smb/Trans2FindFirst2;

    const/16 p2, 0x10

    const-string v0, "\\"

    const-string v1, "*"

    invoke-direct {p1, v0, v1, p2}, Ljcifs/smb/Trans2FindFirst2;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 150
    new-instance p2, Ljcifs/smb/Trans2FindFirst2Response;

    invoke-direct {p2}, Ljcifs/smb/Trans2FindFirst2Response;-><init>()V

    .line 151
    invoke-virtual {p0, p1, p2}, Ljcifs/smb/SmbTree;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    :goto_0
    return-void
.end method

.method public static logon(Ljcifs/UniAddress;Ljcifs/smb/NtlmPasswordAuthentication;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 140
    invoke-static {p0, v0, p1}, Ljcifs/smb/SmbSession;->logon(Ljcifs/UniAddress;ILjcifs/smb/NtlmPasswordAuthentication;)V

    return-void
.end method


# virtual methods
.method declared-synchronized getSmbTree(Ljava/lang/String;Ljava/lang/String;)Ljcifs/smb/SmbTree;
    .locals 3

    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    const-string p1, "IPC$"

    .line 191
    :cond_0
    iget-object v0, p0, Ljcifs/smb/SmbSession;->trees:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 192
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljcifs/smb/SmbTree;

    .line 193
    invoke-virtual {v1, p1, p2}, Ljcifs/smb/SmbTree;->matches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    .line 194
    monitor-exit p0

    return-object v1

    .line 197
    :cond_2
    :try_start_1
    new-instance v0, Ljcifs/smb/SmbTree;

    invoke-direct {v0, p0, p1, p2}, Ljcifs/smb/SmbTree;-><init>(Ljcifs/smb/SmbSession;Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    iget-object p1, p0, Ljcifs/smb/SmbSession;->trees:Ljava/util/Vector;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 199
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method logoff(Z)V
    .locals 4

    .line 437
    invoke-virtual {p0}, Ljcifs/smb/SmbSession;->transport()Ljcifs/smb/SmbTransport;

    move-result-object v0

    monitor-enter v0

    .line 439
    :try_start_0
    iget v1, p0, Ljcifs/smb/SmbSession;->connectionState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 440
    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x3

    .line 441
    iput v1, p0, Ljcifs/smb/SmbSession;->connectionState:I

    const/4 v1, 0x0

    .line 443
    iput-object v1, p0, Ljcifs/smb/SmbSession;->netbiosName:Ljava/lang/String;

    .line 445
    iget-object v2, p0, Ljcifs/smb/SmbSession;->trees:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 446
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljcifs/smb/SmbTree;

    .line 447
    invoke-virtual {v3, p1}, Ljcifs/smb/SmbTree;->treeDisconnect(Z)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    if-nez p1, :cond_2

    .line 450
    iget-object p1, p0, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    iget-object p1, p1, Ljcifs/smb/SmbTransport;->server:Ljcifs/smb/SmbTransport$ServerData;

    iget p1, p1, Ljcifs/smb/SmbTransport$ServerData;->security:I

    if-eqz p1, :cond_2

    .line 455
    new-instance p1, Ljcifs/smb/SmbComLogoffAndX;

    invoke-direct {p1, v1}, Ljcifs/smb/SmbComLogoffAndX;-><init>(Ljcifs/smb/ServerMessageBlock;)V

    .line 456
    iget v3, p0, Ljcifs/smb/SmbSession;->uid:I

    iput v3, p1, Ljcifs/smb/SmbComLogoffAndX;->uid:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 458
    :try_start_1
    iget-object v3, p0, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    invoke-virtual {v3, p1, v1}, Ljcifs/smb/SmbTransport;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V
    :try_end_1
    .catch Ljcifs/smb/SmbException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 461
    :catch_0
    :try_start_2
    iput v2, p0, Ljcifs/smb/SmbSession;->uid:I

    .line 464
    :cond_2
    iput v2, p0, Ljcifs/smb/SmbSession;->connectionState:I

    .line 465
    iget-object p1, p0, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 466
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method matches(Ljcifs/smb/NtlmPasswordAuthentication;)Z
    .locals 1

    .line 202
    iget-object v0, p0, Ljcifs/smb/SmbSession;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    if-eq v0, p1, :cond_1

    invoke-virtual {v0, p1}, Ljcifs/smb/NtlmPasswordAuthentication;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbException;
        }
    .end annotation

    .line 212
    invoke-virtual {p0}, Ljcifs/smb/SmbSession;->transport()Ljcifs/smb/SmbTransport;

    move-result-object v0

    monitor-enter v0

    if-eqz p2, :cond_0

    const/4 v1, 0x0

    .line 214
    :try_start_0
    iput-boolean v1, p2, Ljcifs/smb/ServerMessageBlock;->received:Z

    .line 217
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget v3, Ljcifs/smb/SmbTransport;->SO_TIMEOUT:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, p0, Ljcifs/smb/SmbSession;->expiration:J

    .line 218
    invoke-virtual {p0, p1, p2}, Ljcifs/smb/SmbSession;->sessionSetup(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    if-eqz p2, :cond_1

    .line 219
    iget-boolean v1, p2, Ljcifs/smb/ServerMessageBlock;->received:Z

    if-eqz v1, :cond_1

    .line 220
    monitor-exit v0

    return-void

    .line 223
    :cond_1
    instance-of v1, p1, Ljcifs/smb/SmbComTreeConnectAndX;

    if-eqz v1, :cond_2

    .line 224
    move-object v1, p1

    check-cast v1, Ljcifs/smb/SmbComTreeConnectAndX;

    .line 225
    iget-object v2, p0, Ljcifs/smb/SmbSession;->netbiosName:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, v1, Ljcifs/smb/SmbComTreeConnectAndX;->path:Ljava/lang/String;

    const-string v3, "\\IPC$"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 231
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\\\\"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ljcifs/smb/SmbSession;->netbiosName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\\IPC$"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Ljcifs/smb/SmbComTreeConnectAndX;->path:Ljava/lang/String;

    .line 235
    :cond_2
    iget v1, p0, Ljcifs/smb/SmbSession;->uid:I

    iput v1, p1, Ljcifs/smb/ServerMessageBlock;->uid:I

    .line 236
    iget-object v1, p0, Ljcifs/smb/SmbSession;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    iput-object v1, p1, Ljcifs/smb/ServerMessageBlock;->auth:Ljcifs/smb/NtlmPasswordAuthentication;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 238
    :try_start_1
    iget-object v1, p0, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    invoke-virtual {v1, p1, p2}, Ljcifs/smb/SmbTransport;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V
    :try_end_1
    .catch Ljcifs/smb/SmbException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 246
    :try_start_2
    monitor-exit v0

    return-void

    :catch_0
    move-exception p2

    .line 240
    instance-of v1, p1, Ljcifs/smb/SmbComTreeConnectAndX;

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    .line 241
    invoke-virtual {p0, v1}, Ljcifs/smb/SmbSession;->logoff(Z)V

    :cond_3
    const/4 v1, 0x0

    .line 243
    iput-object v1, p1, Ljcifs/smb/ServerMessageBlock;->digest:Ljcifs/smb/SigningDigest;

    .line 244
    throw p2

    :catchall_0
    move-exception p1

    .line 246
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method sessionSetup(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljcifs/smb/SmbException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 250
    invoke-virtual/range {p0 .. p0}, Ljcifs/smb/SmbSession;->transport()Ljcifs/smb/SmbTransport;

    move-result-object v2

    monitor-enter v2

    const/4 v3, 0x0

    :try_start_0
    new-array v0, v3, [B

    .line 258
    :goto_0
    iget v4, v1, Ljcifs/smb/SmbSession;->connectionState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v5, 0x2

    if-eqz v4, :cond_2

    if-eq v4, v5, :cond_1

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    goto :goto_1

    .line 262
    :cond_0
    :try_start_1
    iget-object v4, v1, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    invoke-virtual {v4}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 264
    :try_start_2
    new-instance v3, Ljcifs/smb/SmbException;

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 260
    :cond_1
    :goto_1
    monitor-exit v2

    return-void

    :cond_2
    const/4 v4, 0x1

    .line 267
    iput v4, v1, Ljcifs/smb/SmbSession;->connectionState:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 270
    :try_start_3
    iget-object v6, v1, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    invoke-virtual {v6}, Ljcifs/smb/SmbTransport;->connect()V

    .line 276
    sget-object v6, Ljcifs/smb/SmbTransport;->log:Ljcifs/util/LogStream;

    sget v6, Ljcifs/util/LogStream;->level:I

    const/4 v7, 0x4

    if-lt v6, v7, :cond_3

    .line 277
    sget-object v6, Ljcifs/smb/SmbTransport;->log:Ljcifs/util/LogStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "sessionSetup: accountName="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v1, Ljcifs/smb/SmbSession;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    iget-object v9, v9, Ljcifs/smb/NtlmPasswordAuthentication;->username:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",primaryDomain="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v1, Ljcifs/smb/SmbSession;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    iget-object v9, v9, Ljcifs/smb/NtlmPasswordAuthentication;->domain:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljcifs/util/LogStream;->println(Ljava/lang/String;)V

    .line 284
    :cond_3
    iput v3, v1, Ljcifs/smb/SmbSession;->uid:I

    const/16 v6, 0xa

    const/4 v8, 0x0

    move-object v9, v0

    move v10, v6

    move-object v0, v8

    move-object v11, v0

    :goto_2
    const v12, -0x3fffff93    # -2.000026f

    const/16 v13, 0x14

    if-eq v10, v6, :cond_f

    if-ne v10, v13, :cond_e

    if-nez v11, :cond_5

    .line 347
    iget-object v11, v1, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    iget v11, v11, Ljcifs/smb/SmbTransport;->flags2:I

    and-int/2addr v11, v7

    if-eqz v11, :cond_4

    move v11, v4

    goto :goto_3

    :cond_4
    move v11, v3

    .line 348
    :goto_3
    new-instance v13, Ljcifs/smb/NtlmContext;

    iget-object v14, v1, Ljcifs/smb/SmbSession;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    invoke-direct {v13, v14, v11}, Ljcifs/smb/NtlmContext;-><init>(Ljcifs/smb/NtlmPasswordAuthentication;Z)V

    move-object v11, v13

    .line 351
    :cond_5
    sget-object v13, Ljcifs/smb/SmbTransport;->log:Ljcifs/util/LogStream;

    sget v13, Ljcifs/util/LogStream;->level:I

    if-lt v13, v7, :cond_6

    .line 352
    sget-object v13, Ljcifs/smb/SmbTransport;->log:Ljcifs/util/LogStream;

    invoke-virtual {v13, v11}, Ljcifs/util/LogStream;->println(Ljava/lang/Object;)V

    .line 354
    :cond_6
    invoke-virtual {v11}, Ljcifs/smb/NtlmContext;->isEstablished()Z

    move-result v13

    if-eqz v13, :cond_7

    .line 356
    invoke-virtual {v11}, Ljcifs/smb/NtlmContext;->getNetbiosName()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v1, Ljcifs/smb/SmbSession;->netbiosName:Ljava/lang/String;

    .line 358
    iput v5, v1, Ljcifs/smb/SmbSession;->connectionState:I
    :try_end_3
    .catch Ljcifs/smb/SmbException; {:try_start_3 .. :try_end_3} :catch_8
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object/from16 v14, p1

    move-object/from16 v15, p2

    :goto_4
    move v10, v3

    goto/16 :goto_b

    .line 365
    :cond_7
    :try_start_4
    array-length v13, v9

    invoke-virtual {v11, v9, v3, v13}, Ljcifs/smb/NtlmContext;->initSecContext([BII)[B

    move-result-object v9
    :try_end_4
    .catch Ljcifs/smb/SmbException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v9, :cond_d

    .line 377
    :try_start_5
    new-instance v13, Ljcifs/smb/SmbComSessionSetupAndX;

    invoke-direct {v13, v1, v8, v9}, Ljcifs/smb/SmbComSessionSetupAndX;-><init>(Ljcifs/smb/SmbSession;Ljcifs/smb/ServerMessageBlock;Ljava/lang/Object;)V

    .line 378
    new-instance v9, Ljcifs/smb/SmbComSessionSetupAndXResponse;

    invoke-direct {v9, v8}, Ljcifs/smb/SmbComSessionSetupAndXResponse;-><init>(Ljcifs/smb/ServerMessageBlock;)V

    .line 380
    iget-object v14, v1, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    iget-object v15, v1, Ljcifs/smb/SmbSession;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    invoke-virtual {v14, v15}, Ljcifs/smb/SmbTransport;->isSignatureSetupRequired(Ljcifs/smb/NtlmPasswordAuthentication;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 381
    invoke-virtual {v11}, Ljcifs/smb/NtlmContext;->getSigningKey()[B

    move-result-object v14

    if-eqz v14, :cond_8

    .line 383
    new-instance v15, Ljcifs/smb/SigningDigest;

    invoke-direct {v15, v14, v4}, Ljcifs/smb/SigningDigest;-><init>([BZ)V

    iput-object v15, v13, Ljcifs/smb/SmbComSessionSetupAndX;->digest:Ljcifs/smb/SigningDigest;

    .line 386
    :cond_8
    iget v14, v1, Ljcifs/smb/SmbSession;->uid:I

    iput v14, v13, Ljcifs/smb/SmbComSessionSetupAndX;->uid:I

    .line 387
    iput v3, v1, Ljcifs/smb/SmbSession;->uid:I
    :try_end_5
    .catch Ljcifs/smb/SmbException; {:try_start_5 .. :try_end_5} :catch_8
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 390
    :try_start_6
    iget-object v14, v1, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    invoke-virtual {v14, v13, v9}, Ljcifs/smb/SmbTransport;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V
    :try_end_6
    .catch Ljcifs/smb/SmbAuthException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljcifs/smb/SmbException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_5

    :catch_1
    move-exception v0

    .line 401
    :try_start_7
    iget-object v14, v1, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    invoke-virtual {v14, v4}, Ljcifs/smb/SmbTransport;->disconnect(Z)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljcifs/smb/SmbException; {:try_start_7 .. :try_end_7} :catch_8
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 404
    :catch_2
    :goto_5
    :try_start_8
    iget-boolean v14, v9, Ljcifs/smb/SmbComSessionSetupAndXResponse;->isLoggedInAsGuest:Z

    if-eqz v14, :cond_a

    const-string v14, "GUEST"

    iget-object v15, v1, Ljcifs/smb/SmbSession;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    iget-object v15, v15, Ljcifs/smb/NtlmPasswordAuthentication;->username:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_9

    goto :goto_6

    .line 406
    :cond_9
    new-instance v0, Ljcifs/smb/SmbAuthException;

    invoke-direct {v0, v12}, Ljcifs/smb/SmbAuthException;-><init>(I)V

    throw v0

    :cond_a
    :goto_6
    if-nez v0, :cond_c

    .line 412
    iget v12, v9, Ljcifs/smb/SmbComSessionSetupAndXResponse;->uid:I

    iput v12, v1, Ljcifs/smb/SmbSession;->uid:I

    .line 414
    iget-object v12, v13, Ljcifs/smb/SmbComSessionSetupAndX;->digest:Ljcifs/smb/SigningDigest;

    if-eqz v12, :cond_b

    .line 416
    iget-object v12, v1, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    iget-object v13, v13, Ljcifs/smb/SmbComSessionSetupAndX;->digest:Ljcifs/smb/SigningDigest;

    iput-object v13, v12, Ljcifs/smb/SmbTransport;->digest:Ljcifs/smb/SigningDigest;

    .line 419
    :cond_b
    iget-object v9, v9, Ljcifs/smb/SmbComSessionSetupAndXResponse;->blob:[B

    goto :goto_7

    .line 410
    :cond_c
    throw v0

    :catch_3
    move-exception v0

    .line 392
    throw v0
    :try_end_8
    .catch Ljcifs/smb/SmbException; {:try_start_8 .. :try_end_8} :catch_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :cond_d
    :goto_7
    move-object/from16 v14, p1

    move-object/from16 v15, p2

    goto/16 :goto_b

    :catch_4
    move-exception v0

    .line 371
    :try_start_9
    iget-object v5, v1, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    invoke-virtual {v5, v4}, Ljcifs/smb/SmbTransport;->disconnect(Z)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5
    .catch Ljcifs/smb/SmbException; {:try_start_9 .. :try_end_9} :catch_8
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 372
    :catch_5
    :try_start_a
    iput v3, v1, Ljcifs/smb/SmbSession;->uid:I

    .line 373
    throw v0

    .line 424
    :cond_e
    new-instance v0, Ljcifs/smb/SmbException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected session setup state: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 289
    :cond_f
    iget-object v10, v1, Ljcifs/smb/SmbSession;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    sget-object v14, Ljcifs/smb/NtlmPasswordAuthentication;->ANONYMOUS:Ljcifs/smb/NtlmPasswordAuthentication;

    if-eq v10, v14, :cond_10

    iget-object v10, v1, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    const/high16 v14, -0x80000000

    invoke-virtual {v10, v14}, Ljcifs/smb/SmbTransport;->hasCapability(I)Z

    move-result v10

    if-eqz v10, :cond_10

    move-object/from16 v14, p1

    move-object/from16 v15, p2

    move v10, v13

    goto/16 :goto_b

    .line 295
    :cond_10
    new-instance v10, Ljcifs/smb/SmbComSessionSetupAndX;

    iget-object v13, v1, Ljcifs/smb/SmbSession;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    move-object/from16 v14, p1

    invoke-direct {v10, v1, v14, v13}, Ljcifs/smb/SmbComSessionSetupAndX;-><init>(Ljcifs/smb/SmbSession;Ljcifs/smb/ServerMessageBlock;Ljava/lang/Object;)V

    .line 296
    new-instance v13, Ljcifs/smb/SmbComSessionSetupAndXResponse;

    move-object/from16 v15, p2

    invoke-direct {v13, v15}, Ljcifs/smb/SmbComSessionSetupAndXResponse;-><init>(Ljcifs/smb/ServerMessageBlock;)V

    .line 302
    iget-object v6, v1, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    iget-object v7, v1, Ljcifs/smb/SmbSession;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    invoke-virtual {v6, v7}, Ljcifs/smb/SmbTransport;->isSignatureSetupRequired(Ljcifs/smb/NtlmPasswordAuthentication;)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 303
    iget-object v6, v1, Ljcifs/smb/SmbSession;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    iget-boolean v6, v6, Ljcifs/smb/NtlmPasswordAuthentication;->hashesExternal:Z

    if-eqz v6, :cond_11

    sget-object v6, Ljcifs/smb/NtlmPasswordAuthentication;->DEFAULT_PASSWORD:Ljava/lang/String;

    const-string v7, ""

    if-eq v6, v7, :cond_11

    .line 306
    iget-object v6, v1, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    sget-object v7, Ljcifs/smb/NtlmPasswordAuthentication;->DEFAULT:Ljcifs/smb/NtlmPasswordAuthentication;

    invoke-virtual {v6, v7}, Ljcifs/smb/SmbTransport;->getSmbSession(Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/smb/SmbSession;

    move-result-object v6

    sget-object v7, Ljcifs/smb/SmbSession;->LOGON_SHARE:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Ljcifs/smb/SmbSession;->getSmbTree(Ljava/lang/String;Ljava/lang/String;)Ljcifs/smb/SmbTree;

    move-result-object v6

    invoke-virtual {v6, v8, v8}, Ljcifs/smb/SmbTree;->treeConnect(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    goto :goto_8

    .line 308
    :cond_11
    iget-object v6, v1, Ljcifs/smb/SmbSession;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    iget-object v7, v1, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    iget-object v7, v7, Ljcifs/smb/SmbTransport;->server:Ljcifs/smb/SmbTransport$ServerData;

    iget-object v7, v7, Ljcifs/smb/SmbTransport$ServerData;->encryptionKey:[B

    invoke-virtual {v6, v7}, Ljcifs/smb/NtlmPasswordAuthentication;->getSigningKey([B)[B

    move-result-object v6

    .line 309
    new-instance v7, Ljcifs/smb/SigningDigest;

    invoke-direct {v7, v6, v3}, Ljcifs/smb/SigningDigest;-><init>([BZ)V

    iput-object v7, v10, Ljcifs/smb/SmbComSessionSetupAndX;->digest:Ljcifs/smb/SigningDigest;

    .line 313
    :cond_12
    :goto_8
    iget-object v6, v1, Ljcifs/smb/SmbSession;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    iput-object v6, v10, Ljcifs/smb/SmbComSessionSetupAndX;->auth:Ljcifs/smb/NtlmPasswordAuthentication;
    :try_end_a
    .catch Ljcifs/smb/SmbException; {:try_start_a .. :try_end_a} :catch_8
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 316
    :try_start_b
    iget-object v6, v1, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    invoke-virtual {v6, v10, v13}, Ljcifs/smb/SmbTransport;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V
    :try_end_b
    .catch Ljcifs/smb/SmbAuthException; {:try_start_b .. :try_end_b} :catch_7
    .catch Ljcifs/smb/SmbException; {:try_start_b .. :try_end_b} :catch_6
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_9

    :catch_6
    move-exception v0

    .line 323
    :goto_9
    :try_start_c
    iget-boolean v6, v13, Ljcifs/smb/SmbComSessionSetupAndXResponse;->isLoggedInAsGuest:Z

    if-eqz v6, :cond_14

    const-string v6, "GUEST"

    iget-object v7, v1, Ljcifs/smb/SmbSession;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    iget-object v7, v7, Ljcifs/smb/NtlmPasswordAuthentication;->username:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_14

    iget-object v6, v1, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    iget-object v6, v6, Ljcifs/smb/SmbTransport;->server:Ljcifs/smb/SmbTransport$ServerData;

    iget v6, v6, Ljcifs/smb/SmbTransport$ServerData;->security:I

    if-eqz v6, :cond_14

    iget-object v6, v1, Ljcifs/smb/SmbSession;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    sget-object v7, Ljcifs/smb/NtlmPasswordAuthentication;->ANONYMOUS:Ljcifs/smb/NtlmPasswordAuthentication;

    if-ne v6, v7, :cond_13

    goto :goto_a

    .line 327
    :cond_13
    new-instance v0, Ljcifs/smb/SmbAuthException;

    invoke-direct {v0, v12}, Ljcifs/smb/SmbAuthException;-><init>(I)V

    throw v0

    :cond_14
    :goto_a
    if-nez v0, :cond_17

    .line 333
    iget v6, v13, Ljcifs/smb/SmbComSessionSetupAndXResponse;->uid:I

    iput v6, v1, Ljcifs/smb/SmbSession;->uid:I

    .line 335
    iget-object v6, v10, Ljcifs/smb/SmbComSessionSetupAndX;->digest:Ljcifs/smb/SigningDigest;

    if-eqz v6, :cond_15

    .line 337
    iget-object v6, v1, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    iget-object v7, v10, Ljcifs/smb/SmbComSessionSetupAndX;->digest:Ljcifs/smb/SigningDigest;

    iput-object v7, v6, Ljcifs/smb/SmbTransport;->digest:Ljcifs/smb/SigningDigest;

    .line 340
    :cond_15
    iput v5, v1, Ljcifs/smb/SmbSession;->connectionState:I
    :try_end_c
    .catch Ljcifs/smb/SmbException; {:try_start_c .. :try_end_c} :catch_8
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_4

    :goto_b
    if-nez v10, :cond_16

    .line 435
    :try_start_d
    iget-object v0, v1, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 434
    monitor-exit v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    return-void

    :cond_16
    const/16 v6, 0xa

    const/4 v7, 0x4

    goto/16 :goto_2

    .line 331
    :cond_17
    :try_start_e
    throw v0

    :catch_7
    move-exception v0

    .line 318
    throw v0
    :try_end_e
    .catch Ljcifs/smb/SmbException; {:try_start_e .. :try_end_e} :catch_8
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    :catchall_0
    move-exception v0

    goto :goto_c

    :catch_8
    move-exception v0

    .line 428
    :try_start_f
    invoke-virtual {v1, v4}, Ljcifs/smb/SmbSession;->logoff(Z)V

    .line 429
    iput v3, v1, Ljcifs/smb/SmbSession;->connectionState:I

    .line 430
    throw v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 435
    :goto_c
    :try_start_10
    iget-object v3, v1, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 432
    throw v0

    :catchall_1
    move-exception v0

    .line 434
    monitor-exit v2
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 469
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SmbSession[accountName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljcifs/smb/SmbSession;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    iget-object v1, v1, Ljcifs/smb/NtlmPasswordAuthentication;->username:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",primaryDomain="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljcifs/smb/SmbSession;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    iget-object v1, v1, Ljcifs/smb/NtlmPasswordAuthentication;->domain:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljcifs/smb/SmbSession;->uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",connectionState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljcifs/smb/SmbSession;->connectionState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method declared-synchronized transport()Ljcifs/smb/SmbTransport;
    .locals 5

    monitor-enter p0

    .line 205
    :try_start_0
    iget-object v0, p0, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    if-nez v0, :cond_0

    .line 206
    iget-object v0, p0, Ljcifs/smb/SmbSession;->address:Ljcifs/UniAddress;

    iget v1, p0, Ljcifs/smb/SmbSession;->port:I

    iget-object v2, p0, Ljcifs/smb/SmbSession;->localAddr:Ljava/net/InetAddress;

    iget v3, p0, Ljcifs/smb/SmbSession;->localPort:I

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Ljcifs/smb/SmbTransport;->getSmbTransport(Ljcifs/UniAddress;ILjava/net/InetAddress;ILjava/lang/String;)Ljcifs/smb/SmbTransport;

    move-result-object v0

    iput-object v0, p0, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    .line 208
    :cond_0
    iget-object v0, p0, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
