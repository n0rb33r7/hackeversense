.class public final Lcom/squareup/javapoet/CodeBlock$Builder;
.super Ljava/lang/Object;
.source "CodeBlock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/javapoet/CodeBlock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field final args:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final formatParts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/squareup/javapoet/CodeBlock$Builder;->formatParts:Ljava/util/List;

    .line 161
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/squareup/javapoet/CodeBlock$Builder;->args:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/squareup/javapoet/CodeBlock$1;)V
    .locals 0

    .line 159
    invoke-direct {p0}, Lcom/squareup/javapoet/CodeBlock$Builder;-><init>()V

    return-void
.end method

.method private addArgument(Ljava/lang/String;CLjava/lang/Object;)V
    .locals 1

    const/16 v0, 0x4c

    if-eq p2, v0, :cond_3

    const/16 v0, 0x4e

    if-eq p2, v0, :cond_2

    const/16 v0, 0x53

    if-eq p2, v0, :cond_1

    const/16 v0, 0x54

    if-ne p2, v0, :cond_0

    .line 330
    iget-object p1, p0, Lcom/squareup/javapoet/CodeBlock$Builder;->args:Ljava/util/List;

    invoke-direct {p0, p3}, Lcom/squareup/javapoet/CodeBlock$Builder;->argToType(Ljava/lang/Object;)Lcom/squareup/javapoet/TypeName;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 333
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, p3, v0

    const-string p1, "invalid format string: \'%s\'"

    .line 334
    invoke-static {p1, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 327
    :cond_1
    iget-object p1, p0, Lcom/squareup/javapoet/CodeBlock$Builder;->args:Ljava/util/List;

    invoke-direct {p0, p3}, Lcom/squareup/javapoet/CodeBlock$Builder;->argToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 321
    :cond_2
    iget-object p1, p0, Lcom/squareup/javapoet/CodeBlock$Builder;->args:Ljava/util/List;

    invoke-direct {p0, p3}, Lcom/squareup/javapoet/CodeBlock$Builder;->argToName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 324
    :cond_3
    iget-object p1, p0, Lcom/squareup/javapoet/CodeBlock$Builder;->args:Ljava/util/List;

    invoke-direct {p0, p3}, Lcom/squareup/javapoet/CodeBlock$Builder;->argToLiteral(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method private argToLiteral(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    return-object p1
.end method

.method private argToName(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3

    .line 339
    instance-of v0, p1, Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 340
    :cond_0
    instance-of v0, p1, Lcom/squareup/javapoet/ParameterSpec;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/squareup/javapoet/ParameterSpec;

    iget-object p1, p1, Lcom/squareup/javapoet/ParameterSpec;->name:Ljava/lang/String;

    return-object p1

    .line 341
    :cond_1
    instance-of v0, p1, Lcom/squareup/javapoet/FieldSpec;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/squareup/javapoet/FieldSpec;

    iget-object p1, p1, Lcom/squareup/javapoet/FieldSpec;->name:Ljava/lang/String;

    return-object p1

    .line 342
    :cond_2
    instance-of v0, p1, Lcom/squareup/javapoet/MethodSpec;

    if-eqz v0, :cond_3

    check-cast p1, Lcom/squareup/javapoet/MethodSpec;

    iget-object p1, p1, Lcom/squareup/javapoet/MethodSpec;->name:Ljava/lang/String;

    return-object p1

    .line 343
    :cond_3
    instance-of v0, p1, Lcom/squareup/javapoet/TypeSpec;

    if-eqz v0, :cond_4

    check-cast p1, Lcom/squareup/javapoet/TypeSpec;

    iget-object p1, p1, Lcom/squareup/javapoet/TypeSpec;->name:Ljava/lang/String;

    return-object p1

    .line 344
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expected name but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private argToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    .line 352
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private argToType(Ljava/lang/Object;)Lcom/squareup/javapoet/TypeName;
    .locals 3

    .line 356
    instance-of v0, p1, Lcom/squareup/javapoet/TypeName;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/squareup/javapoet/TypeName;

    return-object p1

    .line 357
    :cond_0
    instance-of v0, p1, Ljavax/lang/model/type/TypeMirror;

    if-eqz v0, :cond_1

    check-cast p1, Ljavax/lang/model/type/TypeMirror;

    invoke-static {p1}, Lcom/squareup/javapoet/TypeName;->get(Ljavax/lang/model/type/TypeMirror;)Lcom/squareup/javapoet/TypeName;

    move-result-object p1

    return-object p1

    .line 358
    :cond_1
    instance-of v0, p1, Ljavax/lang/model/element/Element;

    if-eqz v0, :cond_2

    check-cast p1, Ljavax/lang/model/element/Element;

    invoke-interface {p1}, Ljavax/lang/model/element/Element;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object p1

    invoke-static {p1}, Lcom/squareup/javapoet/TypeName;->get(Ljavax/lang/model/type/TypeMirror;)Lcom/squareup/javapoet/TypeName;

    move-result-object p1

    return-object p1

    .line 359
    :cond_2
    instance-of v0, p1, Ljava/lang/reflect/Type;

    if-eqz v0, :cond_3

    check-cast p1, Ljava/lang/reflect/Type;

    invoke-static {p1}, Lcom/squareup/javapoet/TypeName;->get(Ljava/lang/reflect/Type;)Lcom/squareup/javapoet/TypeName;

    move-result-object p1

    return-object p1

    .line 360
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expected type but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private isNoArgPlaceholder(C)Z
    .locals 1

    const/16 v0, 0x24

    if-eq p1, v0, :cond_1

    const/16 v0, 0x3e

    if-eq p1, v0, :cond_1

    const/16 v0, 0x3c

    if-eq p1, v0, :cond_1

    const/16 v0, 0x5b

    if-eq p1, v0, :cond_1

    const/16 v0, 0x5d

    if-eq p1, v0, :cond_1

    const/16 v0, 0x57

    if-eq p1, v0, :cond_1

    const/16 v0, 0x5a

    if-ne p1, v0, :cond_0

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


# virtual methods
.method public add(Lcom/squareup/javapoet/CodeBlock;)Lcom/squareup/javapoet/CodeBlock$Builder;
    .locals 2

    .line 412
    iget-object v0, p0, Lcom/squareup/javapoet/CodeBlock$Builder;->formatParts:Ljava/util/List;

    iget-object v1, p1, Lcom/squareup/javapoet/CodeBlock;->formatParts:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 413
    iget-object v0, p0, Lcom/squareup/javapoet/CodeBlock$Builder;->args:Ljava/util/List;

    iget-object p1, p1, Lcom/squareup/javapoet/CodeBlock;->args:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public varargs add(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/CodeBlock$Builder;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 243
    array-length v3, v2

    new-array v3, v3, [I

    const/4 v4, 0x0

    move v5, v4

    move v6, v5

    move v7, v6

    move v8, v7

    .line 245
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v9

    const-string v10, "$"

    const/4 v12, 0x1

    if-ge v5, v9, :cond_c

    .line 246
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v13, 0x24

    if-eq v9, v13, :cond_1

    add-int/lit8 v9, v5, 0x1

    .line 247
    invoke-virtual {v1, v13, v9}, Ljava/lang/String;->indexOf(II)I

    move-result v9

    const/4 v10, -0x1

    if-ne v9, v10, :cond_0

    .line 248
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v9

    .line 249
    :cond_0
    iget-object v10, v0, Lcom/squareup/javapoet/CodeBlock$Builder;->formatParts:Ljava/util/List;

    invoke-virtual {v1, v5, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v10, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v5, v9

    goto :goto_0

    :cond_1
    add-int/lit8 v5, v5, 0x1

    move v9, v5

    .line 260
    :goto_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v13

    if-ge v9, v13, :cond_2

    move v13, v12

    goto :goto_2

    :cond_2
    move v13, v4

    :goto_2
    new-array v14, v12, [Ljava/lang/Object;

    aput-object v1, v14, v4

    const-string v15, "dangling format characters in \'%s\'"

    invoke-static {v13, v15, v14}, Lcom/squareup/javapoet/Util;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    add-int/lit8 v13, v9, 0x1

    .line 261
    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v14, 0x30

    if-lt v9, v14, :cond_4

    const/16 v14, 0x39

    if-le v9, v14, :cond_3

    goto :goto_3

    :cond_3
    move v9, v13

    goto :goto_1

    :cond_4
    :goto_3
    add-int/lit8 v14, v13, -0x1

    .line 266
    invoke-direct {v0, v9}, Lcom/squareup/javapoet/CodeBlock$Builder;->isNoArgPlaceholder(C)Z

    move-result v15

    if-eqz v15, :cond_6

    if-ne v5, v14, :cond_5

    goto :goto_4

    :cond_5
    move v12, v4

    :goto_4
    new-array v5, v4, [Ljava/lang/Object;

    const-string v11, "$$, $>, $<, $[, $], $W, and $Z may not have an index"

    .line 267
    invoke-static {v12, v11, v5}, Lcom/squareup/javapoet/Util;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 269
    iget-object v5, v0, Lcom/squareup/javapoet/CodeBlock$Builder;->formatParts:Ljava/util/List;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v5, v13

    goto :goto_0

    :cond_6
    if-ge v5, v14, :cond_8

    .line 276
    invoke-virtual {v1, v5, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    sub-int/2addr v8, v12

    .line 278
    array-length v15, v2

    if-lez v15, :cond_7

    .line 279
    array-length v15, v2

    rem-int v15, v8, v15

    aget v16, v3, v15

    add-int/lit8 v16, v16, 0x1

    aput v16, v3, v15

    :cond_7
    move v15, v12

    move/from16 v18, v8

    move v8, v7

    move/from16 v7, v18

    goto :goto_5

    :cond_8
    add-int/lit8 v6, v7, 0x1

    move v15, v8

    move v8, v6

    move v6, v12

    :goto_5
    if-ltz v7, :cond_9

    .line 287
    array-length v11, v2

    if-ge v7, v11, :cond_9

    move v11, v12

    goto :goto_6

    :cond_9
    move v11, v4

    :goto_6
    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    add-int/lit8 v17, v7, 0x1

    .line 289
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v12, v4

    add-int/lit8 v5, v5, -0x1

    add-int/lit8 v14, v14, 0x1

    invoke-virtual {v1, v5, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const/4 v14, 0x1

    aput-object v5, v12, v14

    array-length v5, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v14, 0x2

    aput-object v5, v12, v14

    const-string v5, "index %d for \'%s\' not in range (received %s arguments)"

    .line 287
    invoke-static {v11, v5, v12}, Lcom/squareup/javapoet/Util;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    if-eqz v15, :cond_b

    if-nez v6, :cond_a

    goto :goto_7

    :cond_a
    move v12, v4

    goto :goto_8

    :cond_b
    :goto_7
    const/4 v12, 0x1

    :goto_8
    new-array v5, v4, [Ljava/lang/Object;

    const-string v11, "cannot mix indexed and positional parameters"

    .line 290
    invoke-static {v12, v11, v5}, Lcom/squareup/javapoet/Util;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 292
    aget-object v5, v2, v7

    invoke-direct {v0, v1, v9, v5}, Lcom/squareup/javapoet/CodeBlock$Builder;->addArgument(Ljava/lang/String;CLjava/lang/Object;)V

    .line 294
    iget-object v5, v0, Lcom/squareup/javapoet/CodeBlock$Builder;->formatParts:Ljava/util/List;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v7, v8

    move v5, v13

    move v8, v15

    goto/16 :goto_0

    :cond_c
    if-eqz v6, :cond_e

    .line 298
    array-length v1, v2

    if-lt v7, v1, :cond_d

    const/4 v1, 0x2

    const/4 v14, 0x1

    goto :goto_9

    :cond_d
    move v14, v4

    const/4 v1, 0x2

    :goto_9
    new-array v5, v1, [Ljava/lang/Object;

    .line 299
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v4

    array-length v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v6, 0x1

    aput-object v1, v5, v6

    const-string v1, "unused arguments: expected %s, received %s"

    .line 298
    invoke-static {v14, v1, v5}, Lcom/squareup/javapoet/Util;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    :cond_e
    if-eqz v8, :cond_12

    .line 302
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move v5, v4

    .line 303
    :goto_a
    array-length v6, v2

    if-ge v5, v6, :cond_10

    .line 304
    aget v6, v3, v5

    if-nez v6, :cond_f

    .line 305
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v7, v5, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_f
    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    .line 308
    :cond_10
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_11

    const-string v2, ""

    goto :goto_b

    :cond_11
    const-string v2, "s"

    .line 309
    :goto_b
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v2, v6, v4

    const-string v2, ", "

    invoke-static {v2, v1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v3

    const-string v1, "unused argument%s: %s"

    invoke-static {v5, v1, v6}, Lcom/squareup/javapoet/Util;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    :cond_12
    return-object v0
.end method

.method public addNamed(Ljava/lang/String;Ljava/util/Map;)Lcom/squareup/javapoet/CodeBlock$Builder;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)",
            "Lcom/squareup/javapoet/CodeBlock$Builder;"
        }
    .end annotation

    .line 184
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 185
    invoke-static {}, Lcom/squareup/javapoet/CodeBlock;->access$100()Ljava/util/regex/Pattern;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v3

    const-string v1, "argument \'%s\' must start with a lowercase character"

    invoke-static {v4, v1, v2}, Lcom/squareup/javapoet/Util;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    move v0, v3

    .line 189
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_6

    const-string v1, "$"

    .line 190
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    .line 192
    iget-object p2, p0, Lcom/squareup/javapoet/CodeBlock$Builder;->formatParts:Ljava/util/List;

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_1
    if-eq v0, v4, :cond_2

    .line 197
    iget-object v6, p0, Lcom/squareup/javapoet/CodeBlock$Builder;->formatParts:Ljava/util/List;

    invoke-virtual {p1, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v4

    :cond_2
    const/4 v4, 0x0

    const/16 v6, 0x3a

    .line 202
    invoke-virtual {p1, v6, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    if-eq v6, v5, :cond_3

    add-int/lit8 v6, v6, 0x2

    .line 204
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v6, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 205
    invoke-static {}, Lcom/squareup/javapoet/CodeBlock;->access$200()Ljava/util/regex/Pattern;

    move-result-object v5

    invoke-virtual {p1, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    :cond_3
    if-eqz v4, :cond_4

    .line 207
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "argumentName"

    .line 208
    invoke-virtual {v4, v5}, Ljava/util/regex/Matcher;->group(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 209
    invoke-interface {p2, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    new-array v7, v2, [Ljava/lang/Object;

    aput-object v5, v7, v3

    const-string v8, "Missing named argument for $%s"

    invoke-static {v6, v8, v7}, Lcom/squareup/javapoet/Util;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    const-string v6, "typeChar"

    .line 211
    invoke-virtual {v4, v6}, Ljava/util/regex/Matcher;->group(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 212
    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {p0, p1, v6, v5}, Lcom/squareup/javapoet/CodeBlock$Builder;->addArgument(Ljava/lang/String;CLjava/lang/Object;)V

    .line 213
    iget-object v5, p0, Lcom/squareup/javapoet/CodeBlock$Builder;->formatParts:Ljava/util/List;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->regionEnd()I

    move-result v1

    add-int/2addr v0, v1

    goto/16 :goto_1

    .line 216
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_5

    move v1, v2

    goto :goto_2

    :cond_5
    move v1, v3

    :goto_2
    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "dangling $ at end"

    invoke-static {v1, v5, v4}, Lcom/squareup/javapoet/Util;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    add-int/lit8 v1, v0, 0x1

    .line 217
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-direct {p0, v4}, Lcom/squareup/javapoet/CodeBlock$Builder;->isNoArgPlaceholder(C)Z

    move-result v4

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    .line 218
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v2

    const/4 v1, 0x2

    aput-object p1, v5, v1

    const-string v1, "unknown format $%s at %s in \'%s\'"

    .line 217
    invoke-static {v4, v1, v5}, Lcom/squareup/javapoet/Util;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 219
    iget-object v1, p0, Lcom/squareup/javapoet/CodeBlock$Builder;->formatParts:Ljava/util/List;

    add-int/lit8 v4, v0, 0x2

    invoke-virtual {p1, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v4

    goto/16 :goto_1

    :cond_6
    :goto_3
    return-object p0
.end method

.method public addStatement(Lcom/squareup/javapoet/CodeBlock;)Lcom/squareup/javapoet/CodeBlock$Builder;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "$L"

    .line 408
    invoke-virtual {p0, p1, v0}, Lcom/squareup/javapoet/CodeBlock$Builder;->addStatement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/CodeBlock$Builder;

    move-result-object p1

    return-object p1
.end method

.method public varargs addStatement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/CodeBlock$Builder;
    .locals 3

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "$["

    .line 401
    invoke-virtual {p0, v2, v1}, Lcom/squareup/javapoet/CodeBlock$Builder;->add(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/CodeBlock$Builder;

    .line 402
    invoke-virtual {p0, p1, p2}, Lcom/squareup/javapoet/CodeBlock$Builder;->add(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/CodeBlock$Builder;

    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, ";\n$]"

    .line 403
    invoke-virtual {p0, p2, p1}, Lcom/squareup/javapoet/CodeBlock$Builder;->add(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/CodeBlock$Builder;

    return-object p0
.end method

.method public varargs beginControlFlow(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/CodeBlock$Builder;
    .locals 1

    .line 368
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " {\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/squareup/javapoet/CodeBlock$Builder;->add(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/CodeBlock$Builder;

    .line 369
    invoke-virtual {p0}, Lcom/squareup/javapoet/CodeBlock$Builder;->indent()Lcom/squareup/javapoet/CodeBlock$Builder;

    return-object p0
.end method

.method public build()Lcom/squareup/javapoet/CodeBlock;
    .locals 2

    .line 434
    new-instance v0, Lcom/squareup/javapoet/CodeBlock;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/squareup/javapoet/CodeBlock;-><init>(Lcom/squareup/javapoet/CodeBlock$Builder;Lcom/squareup/javapoet/CodeBlock$1;)V

    return-object v0
.end method

.method public clear()Lcom/squareup/javapoet/CodeBlock$Builder;
    .locals 1

    .line 428
    iget-object v0, p0, Lcom/squareup/javapoet/CodeBlock$Builder;->formatParts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 429
    iget-object v0, p0, Lcom/squareup/javapoet/CodeBlock$Builder;->args:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-object p0
.end method

.method public endControlFlow()Lcom/squareup/javapoet/CodeBlock$Builder;
    .locals 2

    .line 385
    invoke-virtual {p0}, Lcom/squareup/javapoet/CodeBlock$Builder;->unindent()Lcom/squareup/javapoet/CodeBlock$Builder;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "}\n"

    .line 386
    invoke-virtual {p0, v1, v0}, Lcom/squareup/javapoet/CodeBlock$Builder;->add(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/CodeBlock$Builder;

    return-object p0
.end method

.method public varargs endControlFlow(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/CodeBlock$Builder;
    .locals 2

    .line 395
    invoke-virtual {p0}, Lcom/squareup/javapoet/CodeBlock$Builder;->unindent()Lcom/squareup/javapoet/CodeBlock$Builder;

    .line 396
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "} "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ";\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/squareup/javapoet/CodeBlock$Builder;->add(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/CodeBlock$Builder;

    return-object p0
.end method

.method public indent()Lcom/squareup/javapoet/CodeBlock$Builder;
    .locals 2

    .line 418
    iget-object v0, p0, Lcom/squareup/javapoet/CodeBlock$Builder;->formatParts:Ljava/util/List;

    const-string v1, "$>"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public isEmpty()Z
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/squareup/javapoet/CodeBlock$Builder;->formatParts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public varargs nextControlFlow(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/CodeBlock$Builder;
    .locals 2

    .line 378
    invoke-virtual {p0}, Lcom/squareup/javapoet/CodeBlock$Builder;->unindent()Lcom/squareup/javapoet/CodeBlock$Builder;

    .line 379
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "} "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " {\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/squareup/javapoet/CodeBlock$Builder;->add(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/CodeBlock$Builder;

    .line 380
    invoke-virtual {p0}, Lcom/squareup/javapoet/CodeBlock$Builder;->indent()Lcom/squareup/javapoet/CodeBlock$Builder;

    return-object p0
.end method

.method public unindent()Lcom/squareup/javapoet/CodeBlock$Builder;
    .locals 2

    .line 423
    iget-object v0, p0, Lcom/squareup/javapoet/CodeBlock$Builder;->formatParts:Ljava/util/List;

    const-string v1, "$<"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method
