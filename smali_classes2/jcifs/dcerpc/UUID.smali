.class public Ljcifs/dcerpc/UUID;
.super Ljcifs/dcerpc/rpc$uuid_t;
.source "UUID.java"


# static fields
.field static final HEXCHARS:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [C

    .line 52
    fill-array-data v0, :array_0

    sput-object v0, Ljcifs/dcerpc/UUID;->HEXCHARS:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 5

    .line 81
    invoke-direct {p0}, Ljcifs/dcerpc/rpc$uuid_t;-><init>()V

    .line 82
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    const/4 v0, 0x0

    const/16 v1, 0x8

    .line 83
    invoke-static {p1, v0, v1}, Ljcifs/dcerpc/UUID;->hex_to_bin([CII)I

    move-result v1

    iput v1, p0, Ljcifs/dcerpc/UUID;->time_low:I

    const/16 v1, 0x9

    const/4 v2, 0x4

    .line 84
    invoke-static {p1, v1, v2}, Ljcifs/dcerpc/UUID;->hex_to_bin([CII)I

    move-result v1

    invoke-static {v1}, Ljcifs/dcerpc/UUID;->S(I)S

    move-result v1

    iput-short v1, p0, Ljcifs/dcerpc/UUID;->time_mid:S

    const/16 v1, 0xe

    .line 85
    invoke-static {p1, v1, v2}, Ljcifs/dcerpc/UUID;->hex_to_bin([CII)I

    move-result v1

    invoke-static {v1}, Ljcifs/dcerpc/UUID;->S(I)S

    move-result v1

    iput-short v1, p0, Ljcifs/dcerpc/UUID;->time_hi_and_version:S

    const/16 v1, 0x13

    const/4 v3, 0x2

    .line 86
    invoke-static {p1, v1, v3}, Ljcifs/dcerpc/UUID;->hex_to_bin([CII)I

    move-result v1

    invoke-static {v1}, Ljcifs/dcerpc/UUID;->B(I)B

    move-result v1

    iput-byte v1, p0, Ljcifs/dcerpc/UUID;->clock_seq_hi_and_reserved:B

    const/16 v1, 0x15

    .line 87
    invoke-static {p1, v1, v3}, Ljcifs/dcerpc/UUID;->hex_to_bin([CII)I

    move-result v1

    invoke-static {v1}, Ljcifs/dcerpc/UUID;->B(I)B

    move-result v1

    iput-byte v1, p0, Ljcifs/dcerpc/UUID;->clock_seq_low:B

    const/4 v1, 0x6

    new-array v1, v1, [B

    .line 88
    iput-object v1, p0, Ljcifs/dcerpc/UUID;->node:[B

    .line 89
    iget-object v1, p0, Ljcifs/dcerpc/UUID;->node:[B

    const/16 v4, 0x18

    invoke-static {p1, v4, v3}, Ljcifs/dcerpc/UUID;->hex_to_bin([CII)I

    move-result v4

    invoke-static {v4}, Ljcifs/dcerpc/UUID;->B(I)B

    move-result v4

    aput-byte v4, v1, v0

    .line 90
    iget-object v0, p0, Ljcifs/dcerpc/UUID;->node:[B

    const/16 v1, 0x1a

    invoke-static {p1, v1, v3}, Ljcifs/dcerpc/UUID;->hex_to_bin([CII)I

    move-result v1

    invoke-static {v1}, Ljcifs/dcerpc/UUID;->B(I)B

    move-result v1

    const/4 v4, 0x1

    aput-byte v1, v0, v4

    .line 91
    iget-object v0, p0, Ljcifs/dcerpc/UUID;->node:[B

    const/16 v1, 0x1c

    invoke-static {p1, v1, v3}, Ljcifs/dcerpc/UUID;->hex_to_bin([CII)I

    move-result v1

    invoke-static {v1}, Ljcifs/dcerpc/UUID;->B(I)B

    move-result v1

    aput-byte v1, v0, v3

    .line 92
    iget-object v0, p0, Ljcifs/dcerpc/UUID;->node:[B

    const/16 v1, 0x1e

    invoke-static {p1, v1, v3}, Ljcifs/dcerpc/UUID;->hex_to_bin([CII)I

    move-result v1

    invoke-static {v1}, Ljcifs/dcerpc/UUID;->B(I)B

    move-result v1

    const/4 v4, 0x3

    aput-byte v1, v0, v4

    .line 93
    iget-object v0, p0, Ljcifs/dcerpc/UUID;->node:[B

    const/16 v1, 0x20

    invoke-static {p1, v1, v3}, Ljcifs/dcerpc/UUID;->hex_to_bin([CII)I

    move-result v1

    invoke-static {v1}, Ljcifs/dcerpc/UUID;->B(I)B

    move-result v1

    aput-byte v1, v0, v2

    .line 94
    iget-object v0, p0, Ljcifs/dcerpc/UUID;->node:[B

    const/16 v1, 0x22

    invoke-static {p1, v1, v3}, Ljcifs/dcerpc/UUID;->hex_to_bin([CII)I

    move-result p1

    invoke-static {p1}, Ljcifs/dcerpc/UUID;->B(I)B

    move-result p1

    const/4 v1, 0x5

    aput-byte p1, v0, v1

    return-void
.end method

.method public constructor <init>(Ljcifs/dcerpc/rpc$uuid_t;)V
    .locals 3

    .line 67
    invoke-direct {p0}, Ljcifs/dcerpc/rpc$uuid_t;-><init>()V

    .line 68
    iget v0, p1, Ljcifs/dcerpc/rpc$uuid_t;->time_low:I

    iput v0, p0, Ljcifs/dcerpc/UUID;->time_low:I

    .line 69
    iget-short v0, p1, Ljcifs/dcerpc/rpc$uuid_t;->time_mid:S

    iput-short v0, p0, Ljcifs/dcerpc/UUID;->time_mid:S

    .line 70
    iget-short v0, p1, Ljcifs/dcerpc/rpc$uuid_t;->time_hi_and_version:S

    iput-short v0, p0, Ljcifs/dcerpc/UUID;->time_hi_and_version:S

    .line 71
    iget-byte v0, p1, Ljcifs/dcerpc/rpc$uuid_t;->clock_seq_hi_and_reserved:B

    iput-byte v0, p0, Ljcifs/dcerpc/UUID;->clock_seq_hi_and_reserved:B

    .line 72
    iget-byte v0, p1, Ljcifs/dcerpc/rpc$uuid_t;->clock_seq_low:B

    iput-byte v0, p0, Ljcifs/dcerpc/UUID;->clock_seq_low:B

    const/4 v0, 0x6

    new-array v0, v0, [B

    .line 73
    iput-object v0, p0, Ljcifs/dcerpc/UUID;->node:[B

    .line 74
    iget-object v0, p0, Ljcifs/dcerpc/UUID;->node:[B

    iget-object v1, p1, Ljcifs/dcerpc/rpc$uuid_t;->node:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    aput-byte v1, v0, v2

    .line 75
    iget-object v0, p0, Ljcifs/dcerpc/UUID;->node:[B

    iget-object v1, p1, Ljcifs/dcerpc/rpc$uuid_t;->node:[B

    const/4 v2, 0x1

    aget-byte v1, v1, v2

    aput-byte v1, v0, v2

    .line 76
    iget-object v0, p0, Ljcifs/dcerpc/UUID;->node:[B

    iget-object v1, p1, Ljcifs/dcerpc/rpc$uuid_t;->node:[B

    const/4 v2, 0x2

    aget-byte v1, v1, v2

    aput-byte v1, v0, v2

    .line 77
    iget-object v0, p0, Ljcifs/dcerpc/UUID;->node:[B

    iget-object v1, p1, Ljcifs/dcerpc/rpc$uuid_t;->node:[B

    const/4 v2, 0x3

    aget-byte v1, v1, v2

    aput-byte v1, v0, v2

    .line 78
    iget-object v0, p0, Ljcifs/dcerpc/UUID;->node:[B

    iget-object v1, p1, Ljcifs/dcerpc/rpc$uuid_t;->node:[B

    const/4 v2, 0x4

    aget-byte v1, v1, v2

    aput-byte v1, v0, v2

    .line 79
    iget-object v0, p0, Ljcifs/dcerpc/UUID;->node:[B

    iget-object p1, p1, Ljcifs/dcerpc/rpc$uuid_t;->node:[B

    const/4 v1, 0x5

    aget-byte p1, p1, v1

    aput-byte p1, v0, v1

    return-void
.end method

.method private static B(I)B
    .locals 0

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    return p0
.end method

.method private static S(I)S
    .locals 1

    const v0, 0xffff

    and-int/2addr p0, v0

    int-to-short p0, p0

    return p0
.end method

.method public static bin_to_hex(II)Ljava/lang/String;
    .locals 3

    .line 56
    new-array v0, p1, [C

    :goto_0
    add-int/lit8 v1, p1, -0x1

    if-lez p1, :cond_0

    .line 59
    sget-object p1, Ljcifs/dcerpc/UUID;->HEXCHARS:[C

    and-int/lit8 v2, p0, 0xf

    aget-char p1, p1, v2

    aput-char p1, v0, v1

    ushr-int/lit8 p0, p0, 0x4

    move p1, v1

    goto :goto_0

    .line 62
    :cond_0
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method public static hex_to_bin([CII)I
    .locals 4

    const/4 v0, 0x0

    move v2, p1

    move v1, v0

    .line 31
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_0

    if-ge v0, p2, :cond_0

    shl-int/lit8 v1, v1, 0x4

    .line 33
    aget-char v3, p0, v2

    packed-switch v3, :pswitch_data_0

    packed-switch v3, :pswitch_data_1

    packed-switch v3, :pswitch_data_2

    .line 45
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p0, p1, p2}, Ljava/lang/String;-><init>([CII)V

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :pswitch_0
    aget-char v3, p0, v2

    add-int/lit8 v3, v3, -0x61

    goto :goto_1

    .line 39
    :pswitch_1
    aget-char v3, p0, v2

    add-int/lit8 v3, v3, -0x41

    :goto_1
    add-int/lit8 v3, v3, 0xa

    goto :goto_2

    .line 36
    :pswitch_2
    aget-char v3, p0, v2

    add-int/lit8 v3, v3, -0x30

    :goto_2
    add-int/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x41
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x61
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 5

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Ljcifs/dcerpc/UUID;->time_low:I

    const/16 v2, 0x8

    invoke-static {v1, v2}, Ljcifs/dcerpc/UUID;->bin_to_hex(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v2, p0, Ljcifs/dcerpc/UUID;->time_mid:S

    const/4 v3, 0x4

    invoke-static {v2, v3}, Ljcifs/dcerpc/UUID;->bin_to_hex(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v2, p0, Ljcifs/dcerpc/UUID;->time_hi_and_version:S

    invoke-static {v2, v3}, Ljcifs/dcerpc/UUID;->bin_to_hex(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v2, p0, Ljcifs/dcerpc/UUID;->clock_seq_hi_and_reserved:B

    const/4 v4, 0x2

    invoke-static {v2, v4}, Ljcifs/dcerpc/UUID;->bin_to_hex(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v2, p0, Ljcifs/dcerpc/UUID;->clock_seq_low:B

    invoke-static {v2, v4}, Ljcifs/dcerpc/UUID;->bin_to_hex(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljcifs/dcerpc/UUID;->node:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    invoke-static {v1, v4}, Ljcifs/dcerpc/UUID;->bin_to_hex(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljcifs/dcerpc/UUID;->node:[B

    const/4 v2, 0x1

    aget-byte v1, v1, v2

    invoke-static {v1, v4}, Ljcifs/dcerpc/UUID;->bin_to_hex(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljcifs/dcerpc/UUID;->node:[B

    aget-byte v1, v1, v4

    invoke-static {v1, v4}, Ljcifs/dcerpc/UUID;->bin_to_hex(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljcifs/dcerpc/UUID;->node:[B

    const/4 v2, 0x3

    aget-byte v1, v1, v2

    invoke-static {v1, v4}, Ljcifs/dcerpc/UUID;->bin_to_hex(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljcifs/dcerpc/UUID;->node:[B

    aget-byte v1, v1, v3

    invoke-static {v1, v4}, Ljcifs/dcerpc/UUID;->bin_to_hex(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljcifs/dcerpc/UUID;->node:[B

    const/4 v2, 0x5

    aget-byte v1, v1, v2

    invoke-static {v1, v4}, Ljcifs/dcerpc/UUID;->bin_to_hex(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
