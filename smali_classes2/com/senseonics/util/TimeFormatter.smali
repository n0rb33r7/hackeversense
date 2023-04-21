.class public Lcom/senseonics/util/TimeFormatter;
.super Ljava/lang/Object;
.source "TimeFormatter.java"


# static fields
.field private static final DATE_TYPE_1:[B

.field private static final DATE_TYPE_2:[B

.field private static final DATE_TYPE_3:[B

.field private static final DATE_TYPE_4:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x14

    new-array v0, v0, [B

    .line 12
    fill-array-data v0, :array_0

    sput-object v0, Lcom/senseonics/util/TimeFormatter;->DATE_TYPE_1:[B

    const/4 v0, 0x3

    new-array v0, v0, [B

    .line 13
    fill-array-data v0, :array_1

    sput-object v0, Lcom/senseonics/util/TimeFormatter;->DATE_TYPE_2:[B

    const/16 v0, 0x20

    new-array v0, v0, [B

    .line 14
    fill-array-data v0, :array_2

    sput-object v0, Lcom/senseonics/util/TimeFormatter;->DATE_TYPE_3:[B

    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 15
    fill-array-data v0, :array_3

    sput-object v0, Lcom/senseonics/util/TimeFormatter;->DATE_TYPE_4:[B

    return-void

    :array_0
    .array-data 1
        0x41t
        0x45t
        0x53t
        0x2ft
        0x43t
        0x42t
        0x43t
        0x2ft
        0x50t
        0x4bt
        0x43t
        0x53t
        0x35t
        0x50t
        0x41t
        0x44t
        0x44t
        0x49t
        0x4et
        0x47t
    .end array-data

    :array_1
    .array-data 1
        0x41t
        0x45t
        0x53t
    .end array-data

    :array_2
    .array-data 1
        0x53t
        0x65t
        0x6et
        0x73t
        0x65t
        0x6ft
        0x6et
        0x69t
        0x63t
        0x73t
        0x45t
        0x6et
        0x63t
        0x72t
        0x79t
        0x70t
        0x74t
        0x53t
        0x65t
        0x63t
        0x72t
        0x65t
        0x74t
        0x4bt
        0x65t
        0x79t
        0x46t
        0x6ft
        0x72t
        0x4dt
        0x4dt
        0x41t
    .end array-data

    :array_3
    .array-data 1
        0x53t
        0x65t
        0x6et
        0x73t
        0x65t
        0x6ft
        0x6et
        0x69t
        0x63t
        0x73t
        0x5ft
        0x49t
        0x56t
        0x4bt
        0x65t
        0x79t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static day()Ljavax/crypto/SecretKey;
    .locals 5

    .line 32
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    sget-object v1, Lcom/senseonics/util/TimeFormatter;->DATE_TYPE_3:[B

    array-length v2, v1

    sget-object v3, Lcom/senseonics/util/TimeFormatter;->DATE_TYPE_2:[B

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/senseonics/util/TimeFormatter;->getDateFormat([BI)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v4, v2, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BIILjava/lang/String;)V

    return-object v0
.end method

.method public static formatDateString()Ljava/lang/String;
    .locals 1

    .line 21
    invoke-static {}, Lcom/senseonics/util/TimeFormatter;->getDateFormat5()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/senseonics/util/TimeFormatter;->toDateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getDateFormat([BI)Ljava/lang/String;
    .locals 4

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-byte v3, p0, v2

    add-int/2addr v3, p1

    int-to-char v3, v3

    .line 38
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 40
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getDateFormat5()Ljava/lang/String;
    .locals 6

    const/16 v0, 0x36

    new-array v1, v0, [B

    .line 44
    fill-array-data v1, :array_0

    new-array v2, v0, [B

    .line 45
    fill-array-data v2, :array_1

    new-array v3, v0, [B

    .line 46
    fill-array-data v3, :array_2

    new-array v0, v0, [B

    .line 47
    fill-array-data v0, :array_3

    .line 49
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, -0x1

    .line 50
    invoke-static {v1, v5}, Lcom/senseonics/util/TimeFormatter;->getDateFormat([BI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, -0x2

    .line 51
    invoke-static {v2, v1}, Lcom/senseonics/util/TimeFormatter;->getDateFormat([BI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, -0x3

    .line 52
    invoke-static {v3, v1}, Lcom/senseonics/util/TimeFormatter;->getDateFormat([BI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, -0x4

    .line 53
    invoke-static {v0, v1}, Lcom/senseonics/util/TimeFormatter;->getDateFormat([BI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :array_0
    .array-data 1
        0x4ct
        0x6et
        0x4at
        0x33t
        0x71t
        0x6bt
        0x3at
        0x69t
        0x79t
        0x47t
        0x4bt
        0x31t
        0x5bt
        0x58t
        0x48t
        0x72t
        0x38t
        0x54t
        0x47t
        0x35t
        0x4et
        0x47t
        0x31t
        0x63t
        0x7at
        0x35t
        0x79t
        0x5bt
        0x53t
        0x57t
        0x33t
        0x6at
        0x67t
        0x59t
        0x4bt
        0x59t
        0x35t
        0x50t
        0x62t
        0x3at
        0x62t
        0x4bt
        0x30t
        0x64t
        0x36t
        0x7at
        0x31t
        0x35t
        0x4et
        0x75t
        0x32t
        0x71t
        0x45t
        0x72t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x6ft
        0x6bt
        0x45t
        0x39t
        0x51t
        0x51t
        0x4et
        0x49t
        0x37t
        0x6dt
        0x51t
        0x4bt
        0x73t
        0x4at
        0x36t
        0x59t
        0x67t
        0x6et
        0x55t
        0x6bt
        0x69t
        0x53t
        0x5ct
        0x31t
        0x7ct
        0x4dt
        0x6bt
        0x3at
        0x7bt
        0x35t
        0x52t
        0x36t
        0x7ct
        0x4ft
        0x50t
        0x59t
        0x56t
        0x4bt
        0x4et
        0x49t
        0x59t
        0x74t
        0x71t
        0x73t
        0x77t
        0x73t
        0x6et
        0x68t
        0x58t
        0x52t
        0x37t
        0x34t
        0x5at
        0x5at
    .end array-data

    nop

    :array_2
    .array-data 1
        0x7bt
        0x52t
        0x45t
        0x37t
        0x6bt
        0x39t
        0x35t
        0x5dt
        0x70t
        0x56t
        0x66t
        0x7bt
        0x52t
        0x50t
        0x4bt
        0x39t
        0x51t
        0x59t
        0x48t
        0x7dt
        0x58t
        0x72t
        0x7dt
        0x65t
        0x67t
        0x67t
        0x4et
        0x76t
        0x37t
        0x33t
        0x5bt
        0x67t
        0x67t
        0x5ct
        0x6et
        0x71t
        0x37t
        0x7at
        0x66t
        0x38t
        0x68t
        0x5bt
        0x77t
        0x59t
        0x33t
        0x6bt
        0x6dt
        0x45t
        0x32t
        0x71t
        0x78t
        0x4at
        0x4at
        0x45t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x49t
        0x58t
        0x68t
        0x78t
        0x50t
        0x70t
        0x5dt
        0x72t
        0x56t
        0x72t
        0x72t
        0x75t
        0x48t
        0x58t
        0x69t
        0x46t
        0x54t
        0x53t
        0x33t
        0x46t
        0x65t
        0x34t
        0x36t
        0x4bt
        0x71t
        0x66t
        0x3bt
        0x7dt
        0x65t
        0x7ct
        0x58t
        0x49t
        0x36t
        0x55t
        0x3at
        0x4ct
        0x55t
        0x5ct
        0x4et
        0x6ct
        0x7dt
        0x71t
        0x74t
        0x6dt
        0x5at
        0x7at
        0x59t
        0x6bt
        0x76t
        0x51t
        0x78t
        0x55t
        0x41t
        0x41t
    .end array-data
.end method

.method private static month()Ljavax/crypto/spec/IvParameterSpec;
    .locals 2

    .line 28
    new-instance v0, Ljavax/crypto/spec/IvParameterSpec;

    sget-object v1, Lcom/senseonics/util/TimeFormatter;->DATE_TYPE_4:[B

    invoke-direct {v0, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    return-object v0
.end method

.method private static toDateString(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 60
    :try_start_0
    sget-object v0, Lcom/senseonics/util/TimeFormatter;->DATE_TYPE_1:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/senseonics/util/TimeFormatter;->getDateFormat([BI)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v2, 0x2

    .line 61
    invoke-static {}, Lcom/senseonics/util/TimeFormatter;->day()Ljavax/crypto/SecretKey;

    move-result-object v3

    invoke-static {}, Lcom/senseonics/util/TimeFormatter;->month()Ljavax/crypto/spec/IvParameterSpec;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 62
    invoke-static {p0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    .line 63
    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    .line 64
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 66
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method
