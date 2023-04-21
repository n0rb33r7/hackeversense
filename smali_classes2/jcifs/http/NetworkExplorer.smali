.class public Ljcifs/http/NetworkExplorer;
.super Ljavax/servlet/http/HttpServlet;
.source "NetworkExplorer.java"


# static fields
.field private static log:Ljcifs/util/LogStream;


# instance fields
.field private credentialsSupplied:Z

.field private defaultDomain:Ljava/lang/String;

.field private enableBasic:Z

.field private insecureBasic:Z

.field private mimeMap:Ljcifs/util/MimeMap;

.field private ntlmSsp:Ljcifs/http/NtlmSsp;

.field private realm:Ljava/lang/String;

.field private style:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    invoke-static {}, Ljcifs/util/LogStream;->getInstance()Ljcifs/util/LogStream;

    move-result-object v0

    sput-object v0, Ljcifs/http/NetworkExplorer;->log:Ljcifs/util/LogStream;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljavax/servlet/http/HttpServlet;-><init>()V

    return-void
.end method

.method private parseServerAndShare(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/16 v0, 0x100

    new-array v0, v0, [C

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return-object v1

    .line 389
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const/16 v5, 0x2f

    if-ge v4, v2, :cond_1

    .line 392
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v5, :cond_1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    if-ne v4, v2, :cond_2

    return-object v1

    :cond_2
    move v1, v3

    :goto_1
    if-ge v4, v2, :cond_3

    .line 400
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v6, v5, :cond_3

    add-int/lit8 v7, v1, 0x1

    .line 401
    aput-char v6, v0, v1

    add-int/lit8 v4, v4, 0x1

    move v1, v7

    goto :goto_1

    :cond_3
    :goto_2
    if-ge v4, v2, :cond_4

    .line 404
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v5, :cond_4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    if-ge v4, v2, :cond_6

    add-int/lit8 v6, v1, 0x1

    .line 408
    aput-char v5, v0, v1

    :goto_3
    add-int/lit8 v1, v6, 0x1

    add-int/lit8 v7, v4, 0x1

    .line 410
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    aput-char v4, v0, v6

    if-ge v7, v2, :cond_6

    if-ne v4, v5, :cond_5

    goto :goto_4

    :cond_5
    move v6, v1

    move v4, v7

    goto :goto_3

    .line 413
    :cond_6
    :goto_4
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0, v3, v1}, Ljava/lang/String;-><init>([CII)V

    return-object p1
.end method


# virtual methods
.method protected compareDates(Ljcifs/smb/SmbFile;Ljava/lang/String;Ljcifs/smb/SmbFile;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 176
    invoke-virtual {p1}, Ljcifs/smb/SmbFile;->isDirectory()Z

    move-result v0

    invoke-virtual {p3}, Ljcifs/smb/SmbFile;->isDirectory()Z

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eq v0, v1, :cond_1

    .line 177
    invoke-virtual {p1}, Ljcifs/smb/SmbFile;->isDirectory()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    return v2

    .line 179
    :cond_1
    invoke-virtual {p1}, Ljcifs/smb/SmbFile;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 180
    invoke-virtual {p3}, Ljcifs/smb/SmbFile;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    return p1

    .line 182
    :cond_2
    invoke-virtual {p1}, Ljcifs/smb/SmbFile;->lastModified()J

    move-result-wide p1

    invoke-virtual {p3}, Ljcifs/smb/SmbFile;->lastModified()J

    move-result-wide v0

    cmp-long p1, p1, v0

    if-lez p1, :cond_3

    goto :goto_1

    :cond_3
    move v2, v3

    :goto_1
    return v2
.end method

.method protected compareNames(Ljcifs/smb/SmbFile;Ljava/lang/String;Ljcifs/smb/SmbFile;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 133
    invoke-virtual {p1}, Ljcifs/smb/SmbFile;->isDirectory()Z

    move-result v0

    invoke-virtual {p3}, Ljcifs/smb/SmbFile;->isDirectory()Z

    move-result v1

    if-eq v0, v1, :cond_1

    .line 134
    invoke-virtual {p1}, Ljcifs/smb/SmbFile;->isDirectory()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    return p1

    .line 136
    :cond_1
    invoke-virtual {p3}, Ljcifs/smb/SmbFile;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method protected compareSizes(Ljcifs/smb/SmbFile;Ljava/lang/String;Ljcifs/smb/SmbFile;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 141
    invoke-virtual {p1}, Ljcifs/smb/SmbFile;->isDirectory()Z

    move-result v0

    invoke-virtual {p3}, Ljcifs/smb/SmbFile;->isDirectory()Z

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eq v0, v1, :cond_1

    .line 142
    invoke-virtual {p1}, Ljcifs/smb/SmbFile;->isDirectory()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    return v2

    .line 144
    :cond_1
    invoke-virtual {p1}, Ljcifs/smb/SmbFile;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 145
    invoke-virtual {p3}, Ljcifs/smb/SmbFile;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    return p1

    .line 147
    :cond_2
    invoke-virtual {p1}, Ljcifs/smb/SmbFile;->length()J

    move-result-wide v0

    invoke-virtual {p3}, Ljcifs/smb/SmbFile;->length()J

    move-result-wide v4

    sub-long/2addr v0, v4

    const-wide/16 v4, 0x0

    cmp-long p1, v0, v4

    if-nez p1, :cond_3

    .line 149
    invoke-virtual {p3}, Ljcifs/smb/SmbFile;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_3
    if-lez p1, :cond_4

    goto :goto_1

    :cond_4
    move v2, v3

    :goto_1
    return v2
.end method

.method protected compareTypes(Ljcifs/smb/SmbFile;Ljava/lang/String;Ljcifs/smb/SmbFile;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 157
    invoke-virtual {p1}, Ljcifs/smb/SmbFile;->isDirectory()Z

    move-result v0

    invoke-virtual {p3}, Ljcifs/smb/SmbFile;->isDirectory()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eq v0, v1, :cond_1

    .line 158
    invoke-virtual {p1}, Ljcifs/smb/SmbFile;->isDirectory()Z

    move-result p1

    if-eqz p1, :cond_0

    move v2, v3

    :cond_0
    return v2

    .line 160
    :cond_1
    invoke-virtual {p3}, Ljcifs/smb/SmbFile;->getName()Ljava/lang/String;

    move-result-object p3

    .line 161
    invoke-virtual {p1}, Ljcifs/smb/SmbFile;->isDirectory()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 162
    invoke-virtual {p2, p3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_2
    const/16 p1, 0x2e

    .line 164
    invoke-virtual {p2, p1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const-string v1, ""

    if-ne v0, v3, :cond_3

    move-object v0, v1

    goto :goto_0

    :cond_3
    add-int/2addr v0, v2

    .line 165
    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 166
    :goto_0
    invoke-virtual {p3, p1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p1

    if-ne p1, v3, :cond_4

    goto :goto_1

    :cond_4
    add-int/2addr p1, v2

    .line 167
    invoke-virtual {p3, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 169
    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_5

    .line 171
    invoke-virtual {p2, p3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    :cond_5
    return p1
.end method

.method protected doDirectory(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;Ljcifs/smb/SmbFile;)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 192
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "MM/d/yy h:mm a"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 193
    new-instance v3, Ljava/util/GregorianCalendar;

    invoke-direct {v3}, Ljava/util/GregorianCalendar;-><init>()V

    .line 195
    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->setCalendar(Ljava/util/Calendar;)V

    .line 197
    invoke-virtual/range {p3 .. p3}, Ljcifs/smb/SmbFile;->listFiles()[Ljcifs/smb/SmbFile;

    move-result-object v3

    .line 198
    sget v4, Ljcifs/util/LogStream;->level:I

    const/4 v5, 0x2

    if-le v4, v5, :cond_0

    .line 199
    sget-object v4, Ljcifs/http/NetworkExplorer;->log:Ljcifs/util/LogStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    array-length v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " items listed"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljcifs/util/LogStream;->println(Ljava/lang/String;)V

    .line 200
    :cond_0
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    const-string v6, "fmt"

    .line 201
    invoke-interface {v0, v6}, Ljavax/servlet/http/HttpServletRequest;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_1

    const-string v6, "col"

    :cond_1
    const-string v7, "sort"

    .line 205
    invoke-interface {v0, v7}, Ljavax/servlet/http/HttpServletRequest;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v7, 0x3

    const/4 v9, 0x1

    if-eqz v0, :cond_5

    const-string v10, "name"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    goto :goto_0

    :cond_2
    const-string v10, "size"

    .line 207
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    move v10, v9

    goto :goto_1

    :cond_3
    const-string v10, "type"

    .line 209
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    move v10, v5

    goto :goto_1

    :cond_4
    const-string v10, "date"

    .line 211
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v10, v7

    goto :goto_1

    :cond_5
    :goto_0
    const/4 v10, 0x0

    :goto_1
    const/16 v0, 0x1c

    move v11, v0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 216
    :goto_2
    array-length v0, v3

    if-ge v12, v0, :cond_11

    .line 218
    :try_start_0
    aget-object v0, v3, v12

    invoke-virtual {v0}, Ljcifs/smb/SmbFile;->getType()I

    move-result v0
    :try_end_0
    .catch Ljcifs/smb/SmbAuthException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljcifs/smb/SmbException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v15, 0x10

    if-ne v0, v15, :cond_8

    goto/16 :goto_7

    :catch_0
    move-exception v0

    .line 225
    sget v15, Ljcifs/util/LogStream;->level:I

    if-le v15, v5, :cond_6

    .line 226
    sget-object v15, Ljcifs/http/NetworkExplorer;->log:Ljcifs/util/LogStream;

    invoke-virtual {v0, v15}, Ljcifs/smb/SmbException;->printStackTrace(Ljava/io/PrintStream;)V

    .line 227
    :cond_6
    invoke-virtual {v0}, Ljcifs/smb/SmbException;->getNtStatus()I

    move-result v15

    const v8, -0x3fffffff    # -2.0000002f

    if-ne v15, v8, :cond_7

    goto :goto_3

    .line 228
    :cond_7
    throw v0

    :catch_1
    move-exception v0

    .line 222
    sget v8, Ljcifs/util/LogStream;->level:I

    if-le v8, v5, :cond_8

    .line 223
    sget-object v8, Ljcifs/http/NetworkExplorer;->log:Ljcifs/util/LogStream;

    invoke-virtual {v0, v8}, Ljcifs/smb/SmbAuthException;->printStackTrace(Ljava/io/PrintStream;)V

    .line 231
    :cond_8
    :goto_3
    aget-object v0, v3, v12

    invoke-virtual {v0}, Ljcifs/smb/SmbFile;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_9

    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    :cond_9
    add-int/lit8 v14, v14, 0x1

    .line 237
    :goto_4
    aget-object v0, v3, v12

    invoke-virtual {v0}, Ljcifs/smb/SmbFile;->getName()Ljava/lang/String;

    move-result-object v0

    .line 238
    sget v8, Ljcifs/util/LogStream;->level:I

    if-le v8, v7, :cond_a

    .line 239
    sget-object v8, Ljcifs/http/NetworkExplorer;->log:Ljcifs/util/LogStream;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v7, ": "

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljcifs/util/LogStream;->println(Ljava/lang/String;)V

    .line 240
    :cond_a
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-le v7, v11, :cond_b

    move v11, v7

    .line 245
    :cond_b
    invoke-virtual {v4}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v7

    const/4 v8, 0x0

    .line 246
    :goto_5
    invoke-interface {v7}, Ljava/util/ListIterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_10

    if-nez v10, :cond_c

    .line 248
    aget-object v15, v3, v12

    invoke-interface {v7}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v5, v17

    check-cast v5, Ljcifs/smb/SmbFile;

    invoke-virtual {v1, v15, v0, v5}, Ljcifs/http/NetworkExplorer;->compareNames(Ljcifs/smb/SmbFile;Ljava/lang/String;Ljcifs/smb/SmbFile;)I

    move-result v5

    if-gez v5, :cond_f

    goto :goto_6

    :cond_c
    if-ne v10, v9, :cond_d

    .line 252
    aget-object v5, v3, v12

    invoke-interface {v7}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljcifs/smb/SmbFile;

    invoke-virtual {v1, v5, v0, v15}, Ljcifs/http/NetworkExplorer;->compareSizes(Ljcifs/smb/SmbFile;Ljava/lang/String;Ljcifs/smb/SmbFile;)I

    move-result v5

    if-gez v5, :cond_f

    goto :goto_6

    :cond_d
    const/4 v5, 0x2

    if-ne v10, v5, :cond_e

    .line 256
    aget-object v5, v3, v12

    invoke-interface {v7}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljcifs/smb/SmbFile;

    invoke-virtual {v1, v5, v0, v15}, Ljcifs/http/NetworkExplorer;->compareTypes(Ljcifs/smb/SmbFile;Ljava/lang/String;Ljcifs/smb/SmbFile;)I

    move-result v5

    if-gez v5, :cond_f

    goto :goto_6

    :cond_e
    const/4 v5, 0x3

    if-ne v10, v5, :cond_f

    .line 260
    aget-object v15, v3, v12

    invoke-interface {v7}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v5, v16

    check-cast v5, Ljcifs/smb/SmbFile;

    invoke-virtual {v1, v15, v0, v5}, Ljcifs/http/NetworkExplorer;->compareDates(Ljcifs/smb/SmbFile;Ljava/lang/String;Ljcifs/smb/SmbFile;)I

    move-result v5

    if-gez v5, :cond_f

    goto :goto_6

    :cond_f
    add-int/lit8 v8, v8, 0x1

    const/4 v5, 0x2

    goto :goto_5

    .line 265
    :cond_10
    :goto_6
    aget-object v0, v3, v12

    invoke-virtual {v4, v8, v0}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    :goto_7
    add-int/lit8 v12, v12, 0x1

    const/4 v5, 0x2

    const/4 v7, 0x3

    goto/16 :goto_2

    :cond_11
    const/16 v0, 0x32

    if-le v11, v0, :cond_12

    move v11, v0

    :cond_12
    mul-int/lit8 v11, v11, 0x9

    .line 272
    invoke-interface/range {p2 .. p2}, Ljavax/servlet/http/HttpServletResponse;->getWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v5, "text/html"

    move-object/from16 v7, p2

    .line 274
    invoke-interface {v7, v5}, Ljavax/servlet/http/HttpServletResponse;->setContentType(Ljava/lang/String;)V

    const-string v5, "<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">"

    .line 276
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v5, "<html><head><title>Network Explorer</title>"

    .line 277
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v5, "<meta HTTP-EQUIV=\"Pragma\" CONTENT=\"no-cache\">"

    .line 278
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v5, "<style TYPE=\"text/css\">"

    .line 279
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 281
    iget-object v5, v1, Ljcifs/http/NetworkExplorer;->style:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 283
    array-length v3, v3

    const/16 v5, 0xc8

    if-ge v3, v5, :cond_13

    const-string v3, "    a:hover {"

    .line 284
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "        background: #a2ff01;"

    .line 285
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "    }"

    .line 286
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_13
    const-string v3, "</STYLE>"

    .line 289
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "</head><body>"

    .line 290
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 292
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<a class=\"sort\" style=\"width: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ";\" href=\"?fmt=detail&sort=name\">Name</a>"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "<a class=\"sort\" href=\"?fmt=detail&sort=size\">Size</a>"

    .line 293
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "<a class=\"sort\" href=\"?fmt=detail&sort=type\">Type</a>"

    .line 294
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "<a class=\"sort\" style=\"width: 180\" href=\"?fmt=detail&sort=date\">Modified</a><br clear=\'all\'><p>"

    .line 295
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 297
    invoke-virtual/range {p3 .. p3}, Ljcifs/smb/SmbFile;->getCanonicalPath()Ljava/lang/String;

    move-result-object v3

    .line 299
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v7, 0x7

    if-ge v5, v7, :cond_14

    const-string v3, "<b><big>smb://</big></b><br>"

    .line 300
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "."

    goto :goto_8

    .line 303
    :cond_14
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "<b><big>"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "</big></b><br>"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "../"

    .line 306
    :goto_8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    add-int v7, v13, v14

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " objects ("

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " directories, "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " files)<br>"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v5, "<b><a class=\"plain\" href=\".\">normal</a> | <a class=\"plain\" href=\"?fmt=detail\">detailed</a></b>"

    .line 307
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v5, "<p><table border=\'0\' cellspacing=\'0\' cellpadding=\'0\'><tr><td>"

    .line 308
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 310
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "<A style=\"width: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "; height: 18;\" HREF=\""

    .line 311
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 312
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "\"><b>&uarr;</b></a>"

    .line 313
    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v8, "detail"

    .line 314
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    const-string v12, "<br clear=\'all\'>"

    if-eqz v10, :cond_15

    .line 315
    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 318
    :cond_15
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v10

    if-eq v10, v9, :cond_16

    invoke-virtual/range {p3 .. p3}, Ljcifs/smb/SmbFile;->getType()I

    move-result v10

    const/4 v13, 0x2

    if-eq v10, v13, :cond_17

    :cond_16
    const-string v3, ""

    .line 322
    :cond_17
    invoke-virtual {v4}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v4

    .line 323
    :goto_9
    invoke-interface {v4}, Ljava/util/ListIterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1c

    .line 324
    invoke-interface {v4}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljcifs/smb/SmbFile;

    .line 325
    invoke-virtual {v10}, Ljcifs/smb/SmbFile;->getName()Ljava/lang/String;

    move-result-object v13

    .line 327
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    const-string v15, "</b></a>"

    const-wide/16 v16, 0x400

    const-string v9, "\"><b>"

    if-eqz v14, :cond_1a

    .line 328
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 329
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 330
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 331
    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 333
    invoke-virtual {v10}, Ljcifs/smb/SmbFile;->isDirectory()Z

    move-result v14

    if-eqz v14, :cond_18

    const-string v9, "?fmt=detail\"><b>"

    .line 334
    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 335
    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 336
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_b

    .line 338
    :cond_18
    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 339
    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v9, "</b></a><div align=\'right\'>"

    .line 340
    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 341
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10}, Ljcifs/smb/SmbFile;->length()J

    move-result-wide v14

    div-long v14, v14, v16

    invoke-virtual {v9, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v14, " KB </div><div>"

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v9, 0x2e

    .line 342
    invoke-virtual {v13, v9}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v9

    const/4 v14, 0x1

    add-int/2addr v9, v14

    if-le v9, v14, :cond_19

    .line 343
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v15

    sub-int/2addr v15, v9

    const/4 v14, 0x6

    if-ge v15, v14, :cond_19

    .line 344
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v13, "</div class=\'ext\'>"

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_a

    :cond_19
    const-string v9, "&nbsp;</div>"

    .line 346
    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_a
    const-string v9, "<div style=\'width: 180\'>"

    .line 348
    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 349
    new-instance v9, Ljava/util/Date;

    invoke-virtual {v10}, Ljcifs/smb/SmbFile;->lastModified()J

    move-result-wide v13

    invoke-direct {v9, v13, v14}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v9, "</div>"

    .line 350
    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 352
    :goto_b
    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_c

    .line 354
    :cond_1a
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 355
    invoke-virtual {v10}, Ljcifs/smb/SmbFile;->isDirectory()Z

    move-result v14

    if-eqz v14, :cond_1b

    .line 356
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 357
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 358
    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 359
    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 360
    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 361
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_c

    :cond_1b
    const-string v14, ";\" HREF=\""

    .line 363
    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 364
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 365
    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 366
    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 367
    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v9, "</b><br><small>"

    .line 368
    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 369
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10}, Ljcifs/smb/SmbFile;->length()J

    move-result-wide v13

    div-long v13, v13, v16

    invoke-virtual {v9, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v13, "KB <br>"

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 370
    new-instance v9, Ljava/util/Date;

    invoke-virtual {v10}, Ljcifs/smb/SmbFile;->lastModified()J

    move-result-wide v13

    invoke-direct {v9, v13, v14}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v9, "</small>"

    .line 371
    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v9, "</a>"

    .line 372
    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_c
    const/4 v9, 0x1

    goto/16 :goto_9

    :cond_1c
    const-string v2, "</td></tr></table>"

    .line 377
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "</BODY></HTML>"

    .line 378
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 379
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    return-void
.end method

.method protected doFile(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;Ljcifs/smb/SmbFile;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 p1, 0x2000

    new-array p1, p1, [B

    .line 114
    new-instance v0, Ljcifs/smb/SmbFileInputStream;

    invoke-direct {v0, p3}, Ljcifs/smb/SmbFileInputStream;-><init>(Ljcifs/smb/SmbFile;)V

    .line 115
    invoke-interface {p2}, Ljavax/servlet/http/HttpServletResponse;->getOutputStream()Ljavax/servlet/ServletOutputStream;

    move-result-object v1

    .line 116
    invoke-virtual {p3}, Ljcifs/smb/SmbFile;->getPath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "text/plain"

    .line 118
    invoke-interface {p2, v3}, Ljavax/servlet/http/HttpServletResponse;->setContentType(Ljava/lang/String;)V

    const/16 v3, 0x2e

    .line 120
    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    if-lez v3, :cond_0

    const/4 v4, 0x1

    add-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v4, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x6

    if-ge v3, v4, :cond_0

    .line 123
    iget-object v3, p0, Ljcifs/http/NetworkExplorer;->mimeMap:Ljcifs/util/MimeMap;

    invoke-virtual {v3, v2}, Ljcifs/util/MimeMap;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Ljavax/servlet/http/HttpServletResponse;->setContentType(Ljava/lang/String;)V

    .line 125
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Ljcifs/smb/SmbFile;->length()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v2, ""

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v2, "Content-Length"

    invoke-interface {p2, v2, p3}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "Accept-Ranges"

    const-string v2, "Bytes"

    .line 126
    invoke-interface {p2, p3, v2}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    :goto_0
    invoke-virtual {v0, p1}, Ljcifs/smb/SmbFileInputStream;->read([B)I

    move-result p2

    const/4 p3, -0x1

    if-eq p2, p3, :cond_1

    const/4 p3, 0x0

    .line 129
    invoke-virtual {v1, p1, p3, p2}, Ljavax/servlet/ServletOutputStream;->write([BII)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public doGet(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/servlet/ServletException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const/4 v4, 0x0

    .line 421
    invoke-interface {v2, v4}, Ljavax/servlet/http/HttpServletRequest;->getSession(Z)Ljavax/servlet/http/HttpSession;

    move-result-object v5

    .line 423
    invoke-interface/range {p1 .. p1}, Ljavax/servlet/http/HttpServletRequest;->getPathInfo()Ljava/lang/String;

    move-result-object v0

    const/16 v7, 0x2f

    if-eqz v0, :cond_0

    .line 425
    invoke-direct {v1, v0}, Ljcifs/http/NetworkExplorer;->parseServerAndShare(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 426
    invoke-virtual {v9, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    if-lez v10, :cond_1

    .line 427
    invoke-virtual {v9, v4, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    move v10, v4

    goto :goto_0

    :cond_0
    const/4 v9, 0x0

    :cond_1
    const/4 v10, 0x1

    :goto_0
    const-string v11, "Authorization"

    .line 432
    invoke-interface {v2, v11}, Ljavax/servlet/http/HttpServletRequest;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 433
    iget-boolean v12, v1, Ljcifs/http/NetworkExplorer;->enableBasic:Z

    if-eqz v12, :cond_3

    iget-boolean v12, v1, Ljcifs/http/NetworkExplorer;->insecureBasic:Z

    if-nez v12, :cond_2

    invoke-interface/range {p1 .. p1}, Ljavax/servlet/http/HttpServletRequest;->isSecure()Z

    move-result v12

    if-eqz v12, :cond_3

    :cond_2
    const/4 v12, 0x1

    goto :goto_1

    :cond_3
    move v12, v4

    :goto_1
    const-string v13, "\""

    const-string v14, "Basic realm=\""

    const-string v15, "close"

    const-string v7, "Connection"

    const-string v4, "NTLM"

    const-string v6, "npa-"

    const-string v8, "WWW-Authenticate"

    move-object/from16 v17, v7

    if-eqz v11, :cond_e

    const-string v7, "NTLM "

    .line 435
    invoke-virtual {v11, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_4

    move-object/from16 v18, v15

    if-eqz v12, :cond_f

    const-string v15, "Basic "

    invoke-virtual {v11, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_f

    goto :goto_2

    :cond_4
    move-object/from16 v18, v15

    .line 438
    :goto_2
    invoke-virtual {v11, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    if-eqz v0, :cond_6

    if-nez v9, :cond_5

    goto :goto_3

    .line 445
    :cond_5
    invoke-static {v9, v10}, Ljcifs/UniAddress;->getByName(Ljava/lang/String;Z)Ljcifs/UniAddress;

    move-result-object v7

    goto :goto_4

    :cond_6
    :goto_3
    const-string v7, "\u0001\u0002__MSBROWSE__\u0002"

    const/4 v10, 0x0

    const/4 v11, 0x1

    .line 442
    invoke-static {v7, v11, v10}, Ljcifs/netbios/NbtAddress;->getByName(Ljava/lang/String;ILjava/lang/String;)Ljcifs/netbios/NbtAddress;

    move-result-object v7

    invoke-virtual {v7}, Ljcifs/netbios/NbtAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    .line 443
    invoke-static {v7}, Ljcifs/UniAddress;->getByName(Ljava/lang/String;)Ljcifs/UniAddress;

    move-result-object v7

    .line 448
    :goto_4
    invoke-interface/range {p1 .. p1}, Ljavax/servlet/http/HttpServletRequest;->getSession()Ljavax/servlet/http/HttpSession;

    .line 449
    invoke-static {v7}, Ljcifs/smb/SmbSession;->getChallenge(Ljcifs/UniAddress;)[B

    move-result-object v7

    .line 450
    invoke-static {v2, v3, v7}, Ljcifs/http/NtlmSsp;->authenticate(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;[B)Ljcifs/smb/NtlmPasswordAuthentication;

    move-result-object v7

    if-nez v7, :cond_7

    return-void

    :cond_7
    move-object v2, v7

    goto :goto_8

    .line 454
    :cond_8
    new-instance v7, Ljava/lang/String;

    const/4 v10, 0x6

    invoke-virtual {v11, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljcifs/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v10

    const-string v11, "US-ASCII"

    invoke-direct {v7, v10, v11}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const/16 v10, 0x3a

    .line 455
    invoke-virtual {v7, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    const/4 v11, -0x1

    if-eq v10, v11, :cond_9

    const/4 v15, 0x0

    .line 456
    invoke-virtual {v7, v15, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v15, v16

    goto :goto_5

    :cond_9
    move-object v15, v7

    :goto_5
    if-eq v10, v11, :cond_a

    const/16 v16, 0x1

    add-int/lit8 v10, v10, 0x1

    .line 457
    invoke-virtual {v7, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_6

    :cond_a
    const-string v7, ""

    :goto_6
    const/16 v10, 0x5c

    .line 458
    invoke-virtual {v15, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    if-ne v10, v11, :cond_b

    const/16 v11, 0x2f

    .line 459
    invoke-virtual {v15, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    const/4 v11, -0x1

    :cond_b
    if-eq v10, v11, :cond_c

    const/4 v11, 0x0

    .line 460
    invoke-virtual {v15, v11, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v11, v19

    goto :goto_7

    :cond_c
    iget-object v11, v1, Ljcifs/http/NetworkExplorer;->defaultDomain:Ljava/lang/String;

    :goto_7
    const/4 v2, -0x1

    if-eq v10, v2, :cond_d

    const/4 v2, 0x1

    add-int/2addr v10, v2

    .line 461
    invoke-virtual {v15, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    .line 462
    :cond_d
    new-instance v2, Ljcifs/smb/NtlmPasswordAuthentication;

    invoke-direct {v2, v11, v15, v7}, Ljcifs/smb/NtlmPasswordAuthentication;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    :goto_8
    invoke-interface/range {p1 .. p1}, Ljavax/servlet/http/HttpServletRequest;->getSession()Ljavax/servlet/http/HttpSession;

    move-result-object v7

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v10, v2}, Ljavax/servlet/http/HttpSession;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_a

    :cond_e
    move-object/from16 v18, v15

    :cond_f
    const/4 v10, 0x0

    .line 467
    iget-boolean v2, v1, Ljcifs/http/NetworkExplorer;->credentialsSupplied:Z

    if-nez v2, :cond_13

    if-eqz v5, :cond_10

    .line 469
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v2}, Ljavax/servlet/http/HttpSession;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljcifs/smb/NtlmPasswordAuthentication;

    goto :goto_9

    :cond_10
    move-object v2, v10

    :goto_9
    if-nez v2, :cond_12

    .line 472
    invoke-interface {v3, v8, v4}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v12, :cond_11

    .line 474
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v1, Ljcifs/http/NetworkExplorer;->realm:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v8, v0}, Ljavax/servlet/http/HttpServletResponse;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_11
    move-object/from16 v11, v17

    move-object/from16 v7, v18

    .line 476
    invoke-interface {v3, v11, v7}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x191

    .line 477
    invoke-interface {v3, v2}, Ljavax/servlet/http/HttpServletResponse;->setStatus(I)V

    .line 478
    invoke-interface/range {p2 .. p2}, Ljavax/servlet/http/HttpServletResponse;->flushBuffer()V

    return-void

    :cond_12
    :goto_a
    move-object/from16 v11, v17

    move-object/from16 v7, v18

    goto :goto_b

    :cond_13
    move-object/from16 v11, v17

    move-object/from16 v7, v18

    move-object v2, v10

    :goto_b
    const-string v10, "smb:/"

    if-eqz v2, :cond_14

    .line 487
    :try_start_0
    new-instance v15, Ljcifs/smb/SmbFile;
    :try_end_0
    .catch Ljcifs/smb/SmbAuthException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljcifs/smb/DfsReferral; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v18, v7

    :try_start_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v15, v0, v2}, Ljcifs/smb/SmbFile;-><init>(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)V

    goto :goto_d

    :catch_0
    move-exception v0

    move-object/from16 v2, p1

    goto :goto_f

    :catch_1
    move-exception v0

    move-object/from16 v18, v7

    :goto_c
    move-object/from16 v2, p1

    goto/16 :goto_10

    :cond_14
    move-object/from16 v18, v7

    if-nez v9, :cond_15

    .line 489
    new-instance v15, Ljcifs/smb/SmbFile;

    const-string v0, "smb://"

    invoke-direct {v15, v0}, Ljcifs/smb/SmbFile;-><init>(Ljava/lang/String;)V

    goto :goto_d

    .line 491
    :cond_15
    new-instance v15, Ljcifs/smb/SmbFile;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v15, v0}, Ljcifs/smb/SmbFile;-><init>(Ljava/lang/String;)V

    .line 494
    :goto_d
    invoke-virtual {v15}, Ljcifs/smb/SmbFile;->isDirectory()Z

    move-result v0
    :try_end_1
    .catch Ljcifs/smb/SmbAuthException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljcifs/smb/DfsReferral; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v0, :cond_16

    move-object/from16 v2, p1

    .line 495
    :try_start_2
    invoke-virtual {v1, v2, v3, v15}, Ljcifs/http/NetworkExplorer;->doDirectory(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;Ljcifs/smb/SmbFile;)V

    goto :goto_e

    :cond_16
    move-object/from16 v2, p1

    .line 497
    invoke-virtual {v1, v2, v3, v15}, Ljcifs/http/NetworkExplorer;->doFile(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;Ljcifs/smb/SmbFile;)V
    :try_end_2
    .catch Ljcifs/smb/SmbAuthException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljcifs/smb/DfsReferral; {:try_start_2 .. :try_end_2} :catch_2

    :goto_e
    return-void

    :catch_2
    move-exception v0

    goto :goto_f

    :catch_3
    move-exception v0

    goto :goto_10

    .line 519
    :goto_f
    invoke-interface/range {p1 .. p1}, Ljavax/servlet/http/HttpServletRequest;->getRequestURL()Ljava/lang/StringBuffer;

    move-result-object v4

    .line 520
    invoke-interface/range {p1 .. p1}, Ljavax/servlet/http/HttpServletRequest;->getQueryString()Ljava/lang/String;

    move-result-object v5

    .line 521
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    invoke-interface/range {p1 .. p1}, Ljavax/servlet/http/HttpServletRequest;->getPathInfo()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v7, v8

    const/4 v8, 0x0

    invoke-virtual {v4, v8, v7}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x2f

    .line 522
    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 523
    iget-object v7, v0, Ljcifs/smb/DfsReferral;->server:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 524
    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 525
    iget-object v0, v0, Ljcifs/smb/DfsReferral;->share:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 526
    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    if-eqz v5, :cond_17

    .line 528
    invoke-interface/range {p1 .. p1}, Ljavax/servlet/http/HttpServletRequest;->getQueryString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 530
    :cond_17
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljavax/servlet/http/HttpServletResponse;->sendRedirect(Ljava/lang/String;)V

    .line 531
    invoke-interface/range {p2 .. p2}, Ljavax/servlet/http/HttpServletResponse;->flushBuffer()V

    return-void

    :catch_4
    move-exception v0

    goto/16 :goto_c

    :goto_10
    if-eqz v5, :cond_18

    .line 501
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljavax/servlet/http/HttpSession;->removeAttribute(Ljava/lang/String;)V

    .line 503
    :cond_18
    invoke-virtual {v0}, Ljcifs/smb/SmbAuthException;->getNtStatus()I

    move-result v0

    const v5, -0x3ffffffb    # -2.0000012f

    if-ne v0, v5, :cond_19

    .line 507
    invoke-interface/range {p1 .. p1}, Ljavax/servlet/http/HttpServletRequest;->getRequestURL()Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljavax/servlet/http/HttpServletResponse;->sendRedirect(Ljava/lang/String;)V

    return-void

    .line 510
    :cond_19
    invoke-interface {v3, v8, v4}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v12, :cond_1a

    .line 512
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v1, Ljcifs/http/NetworkExplorer;->realm:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v8, v0}, Ljavax/servlet/http/HttpServletResponse;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1a
    move-object/from16 v2, v18

    .line 514
    invoke-interface {v3, v11, v2}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x191

    .line 515
    invoke-interface {v3, v2}, Ljavax/servlet/http/HttpServletResponse;->setStatus(I)V

    .line 516
    invoke-interface/range {p2 .. p2}, Ljavax/servlet/http/HttpServletResponse;->flushBuffer()V

    return-void
.end method

.method public init()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;
        }
    .end annotation

    .line 56
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v1, 0x400

    new-array v1, v1, [B

    const-string v2, "jcifs.smb.client.soTimeout"

    const-string v3, "600000"

    .line 61
    invoke-static {v2, v3}, Ljcifs/Config;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string v2, "jcifs.smb.client.attrExpirationPeriod"

    const-string v3, "300000"

    .line 62
    invoke-static {v2, v3}, Ljcifs/Config;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 64
    invoke-virtual {p0}, Ljcifs/http/NetworkExplorer;->getInitParameterNames()Ljava/util/Enumeration;

    move-result-object v2

    .line 65
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 66
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "jcifs."

    .line 67
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 68
    invoke-virtual {p0, v3}, Ljcifs/http/NetworkExplorer;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ljcifs/Config;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const-string v2, "jcifs.smb.client.username"

    .line 72
    invoke-static {v2}, Ljcifs/Config;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    .line 73
    new-instance v2, Ljcifs/http/NtlmSsp;

    invoke-direct {v2}, Ljcifs/http/NtlmSsp;-><init>()V

    iput-object v2, p0, Ljcifs/http/NetworkExplorer;->ntlmSsp:Ljcifs/http/NtlmSsp;

    goto :goto_1

    :cond_2
    const/4 v2, 0x1

    .line 75
    iput-boolean v2, p0, Ljcifs/http/NetworkExplorer;->credentialsSupplied:Z

    .line 79
    :goto_1
    :try_start_0
    new-instance v2, Ljcifs/util/MimeMap;

    invoke-direct {v2}, Ljcifs/util/MimeMap;-><init>()V

    iput-object v2, p0, Ljcifs/http/NetworkExplorer;->mimeMap:Ljcifs/util/MimeMap;

    .line 80
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const-string v3, "jcifs/http/ne.css"

    invoke-virtual {v2, v3}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 81
    :goto_2
    invoke-virtual {v2, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, -0x1

    if-eq v3, v5, :cond_3

    .line 82
    new-instance v5, Ljava/lang/String;

    const-string v6, "ISO8859_1"

    invoke-direct {v5, v1, v4, v3, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 84
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljcifs/http/NetworkExplorer;->style:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    const-string v0, "jcifs.http.enableBasic"

    .line 89
    invoke-static {v0, v4}, Ljcifs/Config;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Ljcifs/http/NetworkExplorer;->enableBasic:Z

    const-string v0, "jcifs.http.insecureBasic"

    .line 90
    invoke-static {v0, v4}, Ljcifs/Config;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Ljcifs/http/NetworkExplorer;->insecureBasic:Z

    const-string v0, "jcifs.http.basicRealm"

    .line 91
    invoke-static {v0}, Ljcifs/Config;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljcifs/http/NetworkExplorer;->realm:Ljava/lang/String;

    if-nez v0, :cond_4

    const-string v0, "jCIFS"

    .line 92
    iput-object v0, p0, Ljcifs/http/NetworkExplorer;->realm:Ljava/lang/String;

    :cond_4
    const-string v0, "jcifs.smb.client.domain"

    .line 93
    invoke-static {v0}, Ljcifs/Config;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljcifs/http/NetworkExplorer;->defaultDomain:Ljava/lang/String;

    const-string v0, "jcifs.util.loglevel"

    .line 95
    invoke-static {v0, v5}, Ljcifs/Config;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v5, :cond_5

    .line 96
    invoke-static {v0}, Ljcifs/util/LogStream;->setLevel(I)V

    .line 98
    :cond_5
    sget v0, Ljcifs/util/LogStream;->level:I

    const/4 v1, 0x2

    if-le v0, v1, :cond_6

    .line 100
    :try_start_1
    sget-object v0, Ljcifs/http/NetworkExplorer;->log:Ljcifs/util/LogStream;

    const-string v1, "JCIFS PROPERTIES"

    invoke-static {v0, v1}, Ljcifs/Config;->store(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_6
    return-void

    :catch_1
    move-exception v0

    .line 86
    new-instance v1, Ljavax/servlet/ServletException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljavax/servlet/ServletException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
