.class public final Lcom/squareup/javapoet/TypeSpec$Builder;
.super Ljava/lang/Object;
.source "TypeSpec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/javapoet/TypeSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public final alwaysQualifiedNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final annotations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/squareup/javapoet/AnnotationSpec;",
            ">;"
        }
    .end annotation
.end field

.field private final anonymousTypeArguments:Lcom/squareup/javapoet/CodeBlock;

.field public final enumConstants:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/squareup/javapoet/TypeSpec;",
            ">;"
        }
    .end annotation
.end field

.field public final fieldSpecs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/squareup/javapoet/FieldSpec;",
            ">;"
        }
    .end annotation
.end field

.field private final initializerBlock:Lcom/squareup/javapoet/CodeBlock$Builder;

.field private final javadoc:Lcom/squareup/javapoet/CodeBlock$Builder;

.field private final kind:Lcom/squareup/javapoet/TypeSpec$Kind;

.field public final methodSpecs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/squareup/javapoet/MethodSpec;",
            ">;"
        }
    .end annotation
.end field

.field public final modifiers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljavax/lang/model/element/Modifier;",
            ">;"
        }
    .end annotation
.end field

.field private final name:Ljava/lang/String;

.field public final originatingElements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljavax/lang/model/element/Element;",
            ">;"
        }
    .end annotation
.end field

.field private final staticBlock:Lcom/squareup/javapoet/CodeBlock$Builder;

.field private superclass:Lcom/squareup/javapoet/TypeName;

.field public final superinterfaces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/squareup/javapoet/TypeName;",
            ">;"
        }
    .end annotation
.end field

.field public final typeSpecs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/squareup/javapoet/TypeSpec;",
            ">;"
        }
    .end annotation
.end field

.field public final typeVariables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/squareup/javapoet/TypeVariableName;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/squareup/javapoet/TypeSpec$Kind;Ljava/lang/String;Lcom/squareup/javapoet/CodeBlock;)V
    .locals 3

    .line 431
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 414
    invoke-static {}, Lcom/squareup/javapoet/CodeBlock;->builder()Lcom/squareup/javapoet/CodeBlock$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/javapoet/TypeSpec$Builder;->javadoc:Lcom/squareup/javapoet/CodeBlock$Builder;

    .line 415
    sget-object v0, Lcom/squareup/javapoet/ClassName;->OBJECT:Lcom/squareup/javapoet/ClassName;

    iput-object v0, p0, Lcom/squareup/javapoet/TypeSpec$Builder;->superclass:Lcom/squareup/javapoet/TypeName;

    .line 416
    invoke-static {}, Lcom/squareup/javapoet/CodeBlock;->builder()Lcom/squareup/javapoet/CodeBlock$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/javapoet/TypeSpec$Builder;->staticBlock:Lcom/squareup/javapoet/CodeBlock$Builder;

    .line 417
    invoke-static {}, Lcom/squareup/javapoet/CodeBlock;->builder()Lcom/squareup/javapoet/CodeBlock$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/javapoet/TypeSpec$Builder;->initializerBlock:Lcom/squareup/javapoet/CodeBlock$Builder;

    .line 419
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/squareup/javapoet/TypeSpec$Builder;->enumConstants:Ljava/util/Map;

    .line 420
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/squareup/javapoet/TypeSpec$Builder;->annotations:Ljava/util/List;

    .line 421
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/squareup/javapoet/TypeSpec$Builder;->modifiers:Ljava/util/List;

    .line 422
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/squareup/javapoet/TypeSpec$Builder;->typeVariables:Ljava/util/List;

    .line 423
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/squareup/javapoet/TypeSpec$Builder;->superinterfaces:Ljava/util/List;

    .line 424
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/squareup/javapoet/TypeSpec$Builder;->fieldSpecs:Ljava/util/List;

    .line 425
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/squareup/javapoet/TypeSpec$Builder;->methodSpecs:Ljava/util/List;

    .line 426
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/squareup/javapoet/TypeSpec$Builder;->typeSpecs:Ljava/util/List;

    .line 427
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/squareup/javapoet/TypeSpec$Builder;->originatingElements:Ljava/util/List;

    .line 428
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/squareup/javapoet/TypeSpec$Builder;->alwaysQualifiedNames:Ljava/util/Set;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_1

    .line 432
    invoke-static {p2}, Ljavax/lang/model/SourceVersion;->isName(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v0

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v1

    :goto_1
    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v0

    const-string v0, "not a valid name: %s"

    invoke-static {v2, v0, v1}, Lcom/squareup/javapoet/Util;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 433
    iput-object p1, p0, Lcom/squareup/javapoet/TypeSpec$Builder;->kind:Lcom/squareup/javapoet/TypeSpec$Kind;

    .line 434
    iput-object p2, p0, Lcom/squareup/javapoet/TypeSpec$Builder;->name:Ljava/lang/String;

    .line 435
    iput-object p3, p0, Lcom/squareup/javapoet/TypeSpec$Builder;->anonymousTypeArguments:Lcom/squareup/javapoet/CodeBlock;

    return-void
.end method

.method synthetic constructor <init>(Lcom/squareup/javapoet/TypeSpec$Kind;Ljava/lang/String;Lcom/squareup/javapoet/CodeBlock;Lcom/squareup/javapoet/TypeSpec$1;)V
    .locals 0

    .line 409
    invoke-direct {p0, p1, p2, p3}, Lcom/squareup/javapoet/TypeSpec$Builder;-><init>(Lcom/squareup/javapoet/TypeSpec$Kind;Ljava/lang/String;Lcom/squareup/javapoet/CodeBlock;)V

    return-void
.end method

.method static synthetic access$000(Lcom/squareup/javapoet/TypeSpec$Builder;)Lcom/squareup/javapoet/TypeSpec$Kind;
    .locals 0

    .line 409
    iget-object p0, p0, Lcom/squareup/javapoet/TypeSpec$Builder;->kind:Lcom/squareup/javapoet/TypeSpec$Kind;

    return-object p0
.end method

.method static synthetic access$100(Lcom/squareup/javapoet/TypeSpec$Builder;)Ljava/lang/String;
    .locals 0

    .line 409
    iget-object p0, p0, Lcom/squareup/javapoet/TypeSpec$Builder;->name:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/squareup/javapoet/TypeSpec$Builder;)Lcom/squareup/javapoet/CodeBlock;
    .locals 0

    .line 409
    iget-object p0, p0, Lcom/squareup/javapoet/TypeSpec$Builder;->anonymousTypeArguments:Lcom/squareup/javapoet/CodeBlock;

    return-object p0
.end method

.method static synthetic access$300(Lcom/squareup/javapoet/TypeSpec$Builder;)Lcom/squareup/javapoet/CodeBlock$Builder;
    .locals 0

    .line 409
    iget-object p0, p0, Lcom/squareup/javapoet/TypeSpec$Builder;->javadoc:Lcom/squareup/javapoet/CodeBlock$Builder;

    return-object p0
.end method

.method static synthetic access$400(Lcom/squareup/javapoet/TypeSpec$Builder;)Lcom/squareup/javapoet/TypeName;
    .locals 0

    .line 409
    iget-object p0, p0, Lcom/squareup/javapoet/TypeSpec$Builder;->superclass:Lcom/squareup/javapoet/TypeName;

    return-object p0
.end method

.method static synthetic access$402(Lcom/squareup/javapoet/TypeSpec$Builder;Lcom/squareup/javapoet/TypeName;)Lcom/squareup/javapoet/TypeName;
    .locals 0

    .line 409
    iput-object p1, p0, Lcom/squareup/javapoet/TypeSpec$Builder;->superclass:Lcom/squareup/javapoet/TypeName;

    return-object p1
.end method

.method static synthetic access$500(Lcom/squareup/javapoet/TypeSpec$Builder;)Lcom/squareup/javapoet/CodeBlock$Builder;
    .locals 0

    .line 409
    iget-object p0, p0, Lcom/squareup/javapoet/TypeSpec$Builder;->staticBlock:Lcom/squareup/javapoet/CodeBlock$Builder;

    return-object p0
.end method

.method static synthetic access$600(Lcom/squareup/javapoet/TypeSpec$Builder;)Lcom/squareup/javapoet/CodeBlock$Builder;
    .locals 0

    .line 409
    iget-object p0, p0, Lcom/squareup/javapoet/TypeSpec$Builder;->initializerBlock:Lcom/squareup/javapoet/CodeBlock$Builder;

    return-object p0
.end method

.method private getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 556
    instance-of v0, p1, Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 557
    check-cast p1, Ljava/lang/Class;

    return-object p1

    .line 558
    :cond_0
    instance-of v0, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_1

    .line 559
    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/squareup/javapoet/TypeSpec$Builder;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public addAnnotation(Lcom/squareup/javapoet/AnnotationSpec;)Lcom/squareup/javapoet/TypeSpec$Builder;
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "annotationSpec == null"

    .line 457
    invoke-static {p1, v1, v0}, Lcom/squareup/javapoet/Util;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    iget-object v0, p0, Lcom/squareup/javapoet/TypeSpec$Builder;->annotations:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addAnnotation(Lcom/squareup/javapoet/ClassName;)Lcom/squareup/javapoet/TypeSpec$Builder;
    .locals 0

    .line 463
    invoke-static {p1}, Lcom/squareup/javapoet/AnnotationSpec;->builder(Lcom/squareup/javapoet/ClassName;)Lcom/squareup/javapoet/AnnotationSpec$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/squareup/javapoet/AnnotationSpec$Builder;->build()Lcom/squareup/javapoet/AnnotationSpec;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/squareup/javapoet/TypeSpec$Builder;->addAnnotation(Lcom/squareup/javapoet/AnnotationSpec;)Lcom/squareup/javapoet/TypeSpec$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addAnnotation(Ljava/lang/Class;)Lcom/squareup/javapoet/TypeSpec$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/squareup/javapoet/TypeSpec$Builder;"
        }
    .end annotation

    .line 467
    invoke-static {p1}, Lcom/squareup/javapoet/ClassName;->get(Ljava/lang/Class;)Lcom/squareup/javapoet/ClassName;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/squareup/javapoet/TypeSpec$Builder;->addAnnotation(Lcom/squareup/javapoet/ClassName;)Lcom/squareup/javapoet/TypeSpec$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addAnnotations(Ljava/lang/Iterable;)Lcom/squareup/javapoet/TypeSpec$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/squareup/javapoet/AnnotationSpec;",
            ">;)",
            "Lcom/squareup/javapoet/TypeSpec$Builder;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "annotationSpecs == null"

    .line 449
    invoke-static {v1, v2, v0}, Lcom/squareup/javapoet/Util;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 450
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/javapoet/AnnotationSpec;

    .line 451
    iget-object v1, p0, Lcom/squareup/javapoet/TypeSpec$Builder;->annotations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    return-object p0
.end method

.method public addEnumConstant(Ljava/lang/String;)Lcom/squareup/javapoet/TypeSpec$Builder;
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, ""

    .line 581
    invoke-static {v1, v0}, Lcom/squareup/javapoet/TypeSpec;->anonymousClassBuilder(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/TypeSpec$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/javapoet/TypeSpec$Builder;->build()Lcom/squareup/javapoet/TypeSpec;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/squareup/javapoet/TypeSpec$Builder;->addEnumConstant(Ljava/lang/String;Lcom/squareup/javapoet/TypeSpec;)Lcom/squareup/javapoet/TypeSpec$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addEnumConstant(Ljava/lang/String;Lcom/squareup/javapoet/TypeSpec;)Lcom/squareup/javapoet/TypeSpec$Builder;
    .locals 1

    .line 585
    iget-object v0, p0, Lcom/squareup/javapoet/TypeSpec$Builder;->enumConstants:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public addField(Lcom/squareup/javapoet/FieldSpec;)Lcom/squareup/javapoet/TypeSpec$Builder;
    .locals 1

    .line 598
    iget-object v0, p0, Lcom/squareup/javapoet/TypeSpec$Builder;->fieldSpecs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public varargs addField(Lcom/squareup/javapoet/TypeName;Ljava/lang/String;[Ljavax/lang/model/element/Modifier;)Lcom/squareup/javapoet/TypeSpec$Builder;
    .locals 0

    .line 603
    invoke-static {p1, p2, p3}, Lcom/squareup/javapoet/FieldSpec;->builder(Lcom/squareup/javapoet/TypeName;Ljava/lang/String;[Ljavax/lang/model/element/Modifier;)Lcom/squareup/javapoet/FieldSpec$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/squareup/javapoet/FieldSpec$Builder;->build()Lcom/squareup/javapoet/FieldSpec;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/squareup/javapoet/TypeSpec$Builder;->addField(Lcom/squareup/javapoet/FieldSpec;)Lcom/squareup/javapoet/TypeSpec$Builder;

    move-result-object p1

    return-object p1
.end method

.method public varargs addField(Ljava/lang/reflect/Type;Ljava/lang/String;[Ljavax/lang/model/element/Modifier;)Lcom/squareup/javapoet/TypeSpec$Builder;
    .locals 0

    .line 607
    invoke-static {p1}, Lcom/squareup/javapoet/TypeName;->get(Ljava/lang/reflect/Type;)Lcom/squareup/javapoet/TypeName;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/squareup/javapoet/TypeSpec$Builder;->addField(Lcom/squareup/javapoet/TypeName;Ljava/lang/String;[Ljavax/lang/model/element/Modifier;)Lcom/squareup/javapoet/TypeSpec$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addFields(Ljava/lang/Iterable;)Lcom/squareup/javapoet/TypeSpec$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/squareup/javapoet/FieldSpec;",
            ">;)",
            "Lcom/squareup/javapoet/TypeSpec$Builder;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "fieldSpecs == null"

    .line 590
    invoke-static {v1, v2, v0}, Lcom/squareup/javapoet/Util;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 591
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/javapoet/FieldSpec;

    .line 592
    invoke-virtual {p0, v0}, Lcom/squareup/javapoet/TypeSpec$Builder;->addField(Lcom/squareup/javapoet/FieldSpec;)Lcom/squareup/javapoet/TypeSpec$Builder;

    goto :goto_1

    :cond_1
    return-object p0
.end method

.method public addInitializerBlock(Lcom/squareup/javapoet/CodeBlock;)Lcom/squareup/javapoet/TypeSpec$Builder;
    .locals 4

    .line 616
    iget-object v0, p0, Lcom/squareup/javapoet/TypeSpec$Builder;->kind:Lcom/squareup/javapoet/TypeSpec$Kind;

    sget-object v1, Lcom/squareup/javapoet/TypeSpec$Kind;->CLASS:Lcom/squareup/javapoet/TypeSpec$Kind;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/squareup/javapoet/TypeSpec$Builder;->kind:Lcom/squareup/javapoet/TypeSpec$Kind;

    sget-object v1, Lcom/squareup/javapoet/TypeSpec$Kind;->ENUM:Lcom/squareup/javapoet/TypeSpec$Kind;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 617
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/squareup/javapoet/TypeSpec$Builder;->kind:Lcom/squareup/javapoet/TypeSpec$Kind;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " can\'t have initializer blocks"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 619
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/squareup/javapoet/TypeSpec$Builder;->initializerBlock:Lcom/squareup/javapoet/CodeBlock$Builder;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "{\n"

    invoke-virtual {v0, v3, v2}, Lcom/squareup/javapoet/CodeBlock$Builder;->add(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/CodeBlock$Builder;

    move-result-object v0

    .line 620
    invoke-virtual {v0}, Lcom/squareup/javapoet/CodeBlock$Builder;->indent()Lcom/squareup/javapoet/CodeBlock$Builder;

    move-result-object v0

    .line 621
    invoke-virtual {v0, p1}, Lcom/squareup/javapoet/CodeBlock$Builder;->add(Lcom/squareup/javapoet/CodeBlock;)Lcom/squareup/javapoet/CodeBlock$Builder;

    move-result-object p1

    .line 622
    invoke-virtual {p1}, Lcom/squareup/javapoet/CodeBlock$Builder;->unindent()Lcom/squareup/javapoet/CodeBlock$Builder;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "}\n"

    .line 623
    invoke-virtual {p1, v1, v0}, Lcom/squareup/javapoet/CodeBlock$Builder;->add(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/CodeBlock$Builder;

    return-object p0
.end method

.method public addJavadoc(Lcom/squareup/javapoet/CodeBlock;)Lcom/squareup/javapoet/TypeSpec$Builder;
    .locals 1

    .line 444
    iget-object v0, p0, Lcom/squareup/javapoet/TypeSpec$Builder;->javadoc:Lcom/squareup/javapoet/CodeBlock$Builder;

    invoke-virtual {v0, p1}, Lcom/squareup/javapoet/CodeBlock$Builder;->add(Lcom/squareup/javapoet/CodeBlock;)Lcom/squareup/javapoet/CodeBlock$Builder;

    return-object p0
.end method

.method public varargs addJavadoc(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/TypeSpec$Builder;
    .locals 1

    .line 439
    iget-object v0, p0, Lcom/squareup/javapoet/TypeSpec$Builder;->javadoc:Lcom/squareup/javapoet/CodeBlock$Builder;

    invoke-virtual {v0, p1, p2}, Lcom/squareup/javapoet/CodeBlock$Builder;->add(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/CodeBlock$Builder;

    return-object p0
.end method

.method public addMethod(Lcom/squareup/javapoet/MethodSpec;)Lcom/squareup/javapoet/TypeSpec$Builder;
    .locals 1

    .line 636
    iget-object v0, p0, Lcom/squareup/javapoet/TypeSpec$Builder;->methodSpecs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addMethods(Ljava/lang/Iterable;)Lcom/squareup/javapoet/TypeSpec$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/squareup/javapoet/MethodSpec;",
            ">;)",
            "Lcom/squareup/javapoet/TypeSpec$Builder;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "methodSpecs == null"

    .line 628
    invoke-static {v1, v2, v0}, Lcom/squareup/javapoet/Util;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 629
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/javapoet/MethodSpec;

    .line 630
    invoke-virtual {p0, v0}, Lcom/squareup/javapoet/TypeSpec$Builder;->addMethod(Lcom/squareup/javapoet/MethodSpec;)Lcom/squareup/javapoet/TypeSpec$Builder;

    goto :goto_1

    :cond_1
    return-object p0
.end method

.method public varargs addModifiers([Ljavax/lang/model/element/Modifier;)Lcom/squareup/javapoet/TypeSpec$Builder;
    .locals 1

    .line 471
    iget-object v0, p0, Lcom/squareup/javapoet/TypeSpec$Builder;->modifiers:Ljava/util/List;

    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addOriginatingElement(Ljavax/lang/model/element/Element;)Lcom/squareup/javapoet/TypeSpec$Builder;
    .locals 1

    .line 654
    iget-object v0, p0, Lcom/squareup/javapoet/TypeSpec$Builder;->originatingElements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addStaticBlock(Lcom/squareup/javapoet/CodeBlock;)Lcom/squareup/javapoet/TypeSpec$Builder;
    .locals 3

    .line 611
    iget-object v0, p0, Lcom/squareup/javapoet/TypeSpec$Builder;->staticBlock:Lcom/squareup/javapoet/CodeBlock$Builder;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "static"

    invoke-virtual {v0, v2, v1}, Lcom/squareup/javapoet/CodeBlock$Builder;->beginControlFlow(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/CodeBlock$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/squareup/javapoet/CodeBlock$Builder;->add(Lcom/squareup/javapoet/CodeBlock;)Lcom/squareup/javapoet/CodeBlock$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/squareup/javapoet/CodeBlock$Builder;->endControlFlow()Lcom/squareup/javapoet/CodeBlock$Builder;

    return-object p0
.end method

.method public addSuperinterface(Lcom/squareup/javapoet/TypeName;)Lcom/squareup/javapoet/TypeSpec$Builder;
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "superinterface == null"

    .line 535
    invoke-static {v1, v2, v0}, Lcom/squareup/javapoet/Util;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 536
    iget-object v0, p0, Lcom/squareup/javapoet/TypeSpec$Builder;->superinterfaces:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addSuperinterface(Ljava/lang/reflect/Type;)Lcom/squareup/javapoet/TypeSpec$Builder;
    .locals 1

    const/4 v0, 0x1

    .line 541
    invoke-virtual {p0, p1, v0}, Lcom/squareup/javapoet/TypeSpec$Builder;->addSuperinterface(Ljava/lang/reflect/Type;Z)Lcom/squareup/javapoet/TypeSpec$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addSuperinterface(Ljava/lang/reflect/Type;Z)Lcom/squareup/javapoet/TypeSpec$Builder;
    .locals 1

    .line 545
    invoke-static {p1}, Lcom/squareup/javapoet/TypeName;->get(Ljava/lang/reflect/Type;)Lcom/squareup/javapoet/TypeName;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/squareup/javapoet/TypeSpec$Builder;->addSuperinterface(Lcom/squareup/javapoet/TypeName;)Lcom/squareup/javapoet/TypeSpec$Builder;

    if-eqz p2, :cond_0

    .line 547
    invoke-direct {p0, p1}, Lcom/squareup/javapoet/TypeSpec$Builder;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 549
    invoke-virtual {p0, p1}, Lcom/squareup/javapoet/TypeSpec$Builder;->avoidClashesWithNestedClasses(Ljava/lang/Class;)Lcom/squareup/javapoet/TypeSpec$Builder;

    :cond_0
    return-object p0
.end method

.method public addSuperinterface(Ljavax/lang/model/type/TypeMirror;)Lcom/squareup/javapoet/TypeSpec$Builder;
    .locals 1

    const/4 v0, 0x1

    .line 566
    invoke-virtual {p0, p1, v0}, Lcom/squareup/javapoet/TypeSpec$Builder;->addSuperinterface(Ljavax/lang/model/type/TypeMirror;Z)Lcom/squareup/javapoet/TypeSpec$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addSuperinterface(Ljavax/lang/model/type/TypeMirror;Z)Lcom/squareup/javapoet/TypeSpec$Builder;
    .locals 1

    .line 571
    invoke-static {p1}, Lcom/squareup/javapoet/TypeName;->get(Ljavax/lang/model/type/TypeMirror;)Lcom/squareup/javapoet/TypeName;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/squareup/javapoet/TypeSpec$Builder;->addSuperinterface(Lcom/squareup/javapoet/TypeName;)Lcom/squareup/javapoet/TypeSpec$Builder;

    if-eqz p2, :cond_0

    .line 572
    instance-of p2, p1, Ljavax/lang/model/type/DeclaredType;

    if-eqz p2, :cond_0

    .line 573
    check-cast p1, Ljavax/lang/model/type/DeclaredType;

    .line 574
    invoke-interface {p1}, Ljavax/lang/model/type/DeclaredType;->asElement()Ljavax/lang/model/element/Element;

    move-result-object p1

    check-cast p1, Ljavax/lang/model/element/TypeElement;

    .line 575
    invoke-virtual {p0, p1}, Lcom/squareup/javapoet/TypeSpec$Builder;->avoidClashesWithNestedClasses(Ljavax/lang/model/element/TypeElement;)Lcom/squareup/javapoet/TypeSpec$Builder;

    :cond_0
    return-object p0
.end method

.method public addSuperinterfaces(Ljava/lang/Iterable;)Lcom/squareup/javapoet/TypeSpec$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/squareup/javapoet/TypeName;",
            ">;)",
            "Lcom/squareup/javapoet/TypeSpec$Builder;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "superinterfaces == null"

    .line 527
    invoke-static {v1, v2, v0}, Lcom/squareup/javapoet/Util;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 528
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/javapoet/TypeName;

    .line 529
    invoke-virtual {p0, v0}, Lcom/squareup/javapoet/TypeSpec$Builder;->addSuperinterface(Lcom/squareup/javapoet/TypeName;)Lcom/squareup/javapoet/TypeSpec$Builder;

    goto :goto_1

    :cond_1
    return-object p0
.end method

.method public addType(Lcom/squareup/javapoet/TypeSpec;)Lcom/squareup/javapoet/TypeSpec$Builder;
    .locals 1

    .line 649
    iget-object v0, p0, Lcom/squareup/javapoet/TypeSpec$Builder;->typeSpecs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addTypeVariable(Lcom/squareup/javapoet/TypeVariableName;)Lcom/squareup/javapoet/TypeSpec$Builder;
    .locals 1

    .line 484
    iget-object v0, p0, Lcom/squareup/javapoet/TypeSpec$Builder;->typeVariables:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addTypeVariables(Ljava/lang/Iterable;)Lcom/squareup/javapoet/TypeSpec$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/squareup/javapoet/TypeVariableName;",
            ">;)",
            "Lcom/squareup/javapoet/TypeSpec$Builder;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "typeVariables == null"

    .line 476
    invoke-static {v1, v2, v0}, Lcom/squareup/javapoet/Util;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 477
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/javapoet/TypeVariableName;

    .line 478
    iget-object v1, p0, Lcom/squareup/javapoet/TypeSpec$Builder;->typeVariables:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    return-object p0
.end method

.method public addTypes(Ljava/lang/Iterable;)Lcom/squareup/javapoet/TypeSpec$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/squareup/javapoet/TypeSpec;",
            ">;)",
            "Lcom/squareup/javapoet/TypeSpec$Builder;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "typeSpecs == null"

    .line 641
    invoke-static {v1, v2, v0}, Lcom/squareup/javapoet/Util;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 642
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/javapoet/TypeSpec;

    .line 643
    invoke-virtual {p0, v0}, Lcom/squareup/javapoet/TypeSpec$Builder;->addType(Lcom/squareup/javapoet/TypeSpec;)Lcom/squareup/javapoet/TypeSpec$Builder;

    goto :goto_1

    :cond_1
    return-object p0
.end method

.method public varargs alwaysQualify([Ljava/lang/String;)Lcom/squareup/javapoet/TypeSpec$Builder;
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    new-array v3, v1, [Ljava/lang/Object;

    const-string v4, "simpleNames == null"

    .line 659
    invoke-static {v2, v4, v3}, Lcom/squareup/javapoet/Util;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 660
    array-length v2, p1

    move v3, v1

    :goto_1
    if-ge v3, v2, :cond_2

    aget-object v4, p1, v3

    if-eqz v4, :cond_1

    move v5, v0

    goto :goto_2

    :cond_1
    move v5, v1

    :goto_2
    new-array v6, v0, [Ljava/lang/Object;

    .line 664
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    const-string v7, "null entry in simpleNames array: %s"

    .line 661
    invoke-static {v5, v7, v6}, Lcom/squareup/javapoet/Util;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 666
    iget-object v5, p0, Lcom/squareup/javapoet/TypeSpec$Builder;->alwaysQualifiedNames:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    return-object p0
.end method

.method public avoidClashesWithNestedClasses(Ljava/lang/Class;)Lcom/squareup/javapoet/TypeSpec$Builder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/squareup/javapoet/TypeSpec$Builder;"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    new-array v3, v1, [Ljava/lang/Object;

    const-string v4, "clazz == null"

    .line 740
    invoke-static {v2, v4, v3}, Lcom/squareup/javapoet/Util;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 741
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredClasses()[Ljava/lang/Class;

    move-result-object v2

    array-length v3, v2

    move v4, v1

    :goto_1
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    new-array v6, v0, [Ljava/lang/String;

    .line 742
    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v6, v1

    invoke-virtual {p0, v6}, Lcom/squareup/javapoet/TypeSpec$Builder;->alwaysQualify([Ljava/lang/String;)Lcom/squareup/javapoet/TypeSpec$Builder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 744
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 745
    const-class v2, Ljava/lang/Object;

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 746
    invoke-virtual {p0, v0}, Lcom/squareup/javapoet/TypeSpec$Builder;->avoidClashesWithNestedClasses(Ljava/lang/Class;)Lcom/squareup/javapoet/TypeSpec$Builder;

    .line 748
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object p1

    array-length v0, p1

    :goto_2
    if-ge v1, v0, :cond_3

    aget-object v2, p1, v1

    .line 749
    invoke-virtual {p0, v2}, Lcom/squareup/javapoet/TypeSpec$Builder;->avoidClashesWithNestedClasses(Ljava/lang/Class;)Lcom/squareup/javapoet/TypeSpec$Builder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    return-object p0
.end method

.method public avoidClashesWithNestedClasses(Ljavax/lang/model/element/TypeElement;)Lcom/squareup/javapoet/TypeSpec$Builder;
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    new-array v3, v1, [Ljava/lang/Object;

    const-string v4, "typeElement == null"

    .line 696
    invoke-static {v2, v4, v3}, Lcom/squareup/javapoet/Util;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 697
    invoke-interface {p1}, Ljavax/lang/model/element/TypeElement;->getEnclosedElements()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljavax/lang/model/util/ElementFilter;->typesIn(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/lang/model/element/TypeElement;

    new-array v4, v0, [Ljava/lang/String;

    .line 698
    invoke-interface {v3}, Ljavax/lang/model/element/TypeElement;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v1

    invoke-virtual {p0, v4}, Lcom/squareup/javapoet/TypeSpec$Builder;->alwaysQualify([Ljava/lang/String;)Lcom/squareup/javapoet/TypeSpec$Builder;

    goto :goto_1

    .line 700
    :cond_1
    invoke-interface {p1}, Ljavax/lang/model/element/TypeElement;->getSuperclass()Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    .line 701
    instance-of v1, v0, Ljavax/lang/model/type/NoType;

    if-nez v1, :cond_2

    instance-of v1, v0, Ljavax/lang/model/type/DeclaredType;

    if-eqz v1, :cond_2

    .line 702
    check-cast v0, Ljavax/lang/model/type/DeclaredType;

    invoke-interface {v0}, Ljavax/lang/model/type/DeclaredType;->asElement()Ljavax/lang/model/element/Element;

    move-result-object v0

    check-cast v0, Ljavax/lang/model/element/TypeElement;

    .line 703
    invoke-virtual {p0, v0}, Lcom/squareup/javapoet/TypeSpec$Builder;->avoidClashesWithNestedClasses(Ljavax/lang/model/element/TypeElement;)Lcom/squareup/javapoet/TypeSpec$Builder;

    .line 705
    :cond_2
    invoke-interface {p1}, Ljavax/lang/model/element/TypeElement;->getInterfaces()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/lang/model/type/TypeMirror;

    .line 706
    instance-of v1, v0, Ljavax/lang/model/type/DeclaredType;

    if-eqz v1, :cond_3

    .line 707
    check-cast v0, Ljavax/lang/model/type/DeclaredType;

    .line 708
    invoke-interface {v0}, Ljavax/lang/model/type/DeclaredType;->asElement()Ljavax/lang/model/element/Element;

    move-result-object v0

    check-cast v0, Ljavax/lang/model/element/TypeElement;

    .line 709
    invoke-virtual {p0, v0}, Lcom/squareup/javapoet/TypeSpec$Builder;->avoidClashesWithNestedClasses(Ljavax/lang/model/element/TypeElement;)Lcom/squareup/javapoet/TypeSpec$Builder;

    goto :goto_2

    :cond_4
    return-object p0
.end method

.method public build()Lcom/squareup/javapoet/TypeSpec;
    .locals 11

    .line 755
    iget-object v0, p0, Lcom/squareup/javapoet/TypeSpec$Builder;->annotations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/squareup/javapoet/AnnotationSpec;

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "annotationSpec == null"

    .line 756
    invoke-static {v1, v3, v2}, Lcom/squareup/javapoet/Util;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 759
    :cond_0
    iget-object v0, p0, Lcom/squareup/javapoet/TypeSpec$Builder;->modifiers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_3

    .line 760
    iget-object v0, p0, Lcom/squareup/javapoet/TypeSpec$Builder;->anonymousTypeArguments:Lcom/squareup/javapoet/CodeBlock;

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "forbidden on anonymous types."

    invoke-static {v0, v4, v3}, Lcom/squareup/javapoet/Util;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 761
    iget-object v0, p0, Lcom/squareup/javapoet/TypeSpec$Builder;->modifiers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/lang/model/element/Modifier;

    if-eqz v3, :cond_2

    move v3, v1

    goto :goto_3

    :cond_2
    move v3, v2

    :goto_3
    new-array v4, v2, [Ljava/lang/Object;

    const-string v5, "modifiers contain null"

    .line 762
    invoke-static {v3, v5, v4}, Lcom/squareup/javapoet/Util;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 766
    :cond_3
    iget-object v0, p0, Lcom/squareup/javapoet/TypeSpec$Builder;->kind:Lcom/squareup/javapoet/TypeSpec$Kind;

    sget-object v3, Lcom/squareup/javapoet/TypeSpec$Kind;->ENUM:Lcom/squareup/javapoet/TypeSpec$Kind;

    if-ne v0, v3, :cond_5

    iget-object v0, p0, Lcom/squareup/javapoet/TypeSpec$Builder;->enumConstants:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_4

    :cond_4
    move v0, v2

    goto :goto_5

    :cond_5
    :goto_4
    move v0, v1

    :goto_5
    new-array v3, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/squareup/javapoet/TypeSpec$Builder;->name:Ljava/lang/String;

    aput-object v4, v3, v2

    const-string v4, "at least one enum constant is required for %s"

    invoke-static {v0, v4, v3}, Lcom/squareup/javapoet/Util;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 769
    iget-object v0, p0, Lcom/squareup/javapoet/TypeSpec$Builder;->superinterfaces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/squareup/javapoet/TypeName;

    if-eqz v3, :cond_6

    move v3, v1

    goto :goto_7

    :cond_6
    move v3, v2

    :goto_7
    new-array v4, v2, [Ljava/lang/Object;

    const-string v5, "superinterfaces contains null"

    .line 770
    invoke-static {v3, v5, v4}, Lcom/squareup/javapoet/Util;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_6

    .line 773
    :cond_7
    iget-object v0, p0, Lcom/squareup/javapoet/TypeSpec$Builder;->typeVariables:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    .line 774
    iget-object v0, p0, Lcom/squareup/javapoet/TypeSpec$Builder;->anonymousTypeArguments:Lcom/squareup/javapoet/CodeBlock;

    if-nez v0, :cond_8

    move v0, v1

    goto :goto_8

    :cond_8
    move v0, v2

    :goto_8
    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "typevariables are forbidden on anonymous types."

    invoke-static {v0, v4, v3}, Lcom/squareup/javapoet/Util;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 776
    iget-object v0, p0, Lcom/squareup/javapoet/TypeSpec$Builder;->typeVariables:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/squareup/javapoet/TypeVariableName;

    if-eqz v3, :cond_9

    move v3, v1

    goto :goto_a

    :cond_9
    move v3, v2

    :goto_a
    new-array v4, v2, [Ljava/lang/Object;

    const-string v5, "typeVariables contain null"

    .line 777
    invoke-static {v3, v5, v4}, Lcom/squareup/javapoet/Util;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_9

    .line 781
    :cond_a
    iget-object v0, p0, Lcom/squareup/javapoet/TypeSpec$Builder;->enumConstants:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 782
    iget-object v4, p0, Lcom/squareup/javapoet/TypeSpec$Builder;->kind:Lcom/squareup/javapoet/TypeSpec$Kind;

    sget-object v5, Lcom/squareup/javapoet/TypeSpec$Kind;->ENUM:Lcom/squareup/javapoet/TypeSpec$Kind;

    if-ne v4, v5, :cond_b

    move v4, v1

    goto :goto_c

    :cond_b
    move v4, v2

    :goto_c
    new-array v5, v1, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/squareup/javapoet/TypeSpec$Builder;->name:Ljava/lang/String;

    aput-object v6, v5, v2

    const-string v6, "%s is not enum"

    invoke-static {v4, v6, v5}, Lcom/squareup/javapoet/Util;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 783
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/squareup/javapoet/TypeSpec;

    iget-object v3, v3, Lcom/squareup/javapoet/TypeSpec;->anonymousTypeArguments:Lcom/squareup/javapoet/CodeBlock;

    if-eqz v3, :cond_c

    move v3, v1

    goto :goto_d

    :cond_c
    move v3, v2

    :goto_d
    new-array v4, v2, [Ljava/lang/Object;

    const-string v5, "enum constants must have anonymous type arguments"

    invoke-static {v3, v5, v4}, Lcom/squareup/javapoet/Util;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 785
    iget-object v3, p0, Lcom/squareup/javapoet/TypeSpec$Builder;->name:Ljava/lang/String;

    invoke-static {v3}, Ljavax/lang/model/SourceVersion;->isName(Ljava/lang/CharSequence;)Z

    move-result v3

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/squareup/javapoet/TypeSpec$Builder;->name:Ljava/lang/String;

    aput-object v5, v4, v2

    const-string v5, "not a valid enum constant: %s"

    invoke-static {v3, v5, v4}, Lcom/squareup/javapoet/Util;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_b

    .line 788
    :cond_d
    iget-object v0, p0, Lcom/squareup/javapoet/TypeSpec$Builder;->fieldSpecs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_e
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x4

    const-string v5, "%s %s.%s requires modifiers %s"

    const/4 v6, 0x3

    const/4 v7, 0x2

    if-eqz v3, :cond_10

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/squareup/javapoet/FieldSpec;

    .line 789
    iget-object v8, p0, Lcom/squareup/javapoet/TypeSpec$Builder;->kind:Lcom/squareup/javapoet/TypeSpec$Kind;

    sget-object v9, Lcom/squareup/javapoet/TypeSpec$Kind;->INTERFACE:Lcom/squareup/javapoet/TypeSpec$Kind;

    if-eq v8, v9, :cond_f

    iget-object v8, p0, Lcom/squareup/javapoet/TypeSpec$Builder;->kind:Lcom/squareup/javapoet/TypeSpec$Kind;

    sget-object v9, Lcom/squareup/javapoet/TypeSpec$Kind;->ANNOTATION:Lcom/squareup/javapoet/TypeSpec$Kind;

    if-ne v8, v9, :cond_e

    .line 790
    :cond_f
    iget-object v8, v3, Lcom/squareup/javapoet/FieldSpec;->modifiers:Ljava/util/Set;

    new-array v9, v7, [Ljavax/lang/model/element/Modifier;

    sget-object v10, Ljavax/lang/model/element/Modifier;->PUBLIC:Ljavax/lang/model/element/Modifier;

    aput-object v10, v9, v2

    sget-object v10, Ljavax/lang/model/element/Modifier;->PRIVATE:Ljavax/lang/model/element/Modifier;

    aput-object v10, v9, v1

    invoke-static {v8, v9}, Lcom/squareup/javapoet/Util;->requireExactlyOneOf(Ljava/util/Set;[Ljavax/lang/model/element/Modifier;)V

    .line 791
    sget-object v8, Ljavax/lang/model/element/Modifier;->STATIC:Ljavax/lang/model/element/Modifier;

    sget-object v9, Ljavax/lang/model/element/Modifier;->FINAL:Ljavax/lang/model/element/Modifier;

    invoke-static {v8, v9}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v8

    .line 792
    iget-object v9, v3, Lcom/squareup/javapoet/FieldSpec;->modifiers:Ljava/util/Set;

    invoke-interface {v9, v8}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v9

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v10, p0, Lcom/squareup/javapoet/TypeSpec$Builder;->kind:Lcom/squareup/javapoet/TypeSpec$Kind;

    aput-object v10, v4, v2

    iget-object v10, p0, Lcom/squareup/javapoet/TypeSpec$Builder;->name:Ljava/lang/String;

    aput-object v10, v4, v1

    iget-object v3, v3, Lcom/squareup/javapoet/FieldSpec;->name:Ljava/lang/String;

    aput-object v3, v4, v7

    aput-object v8, v4, v6

    invoke-static {v9, v5, v4}, Lcom/squareup/javapoet/Util;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_e

    .line 797
    :cond_10
    iget-object v0, p0, Lcom/squareup/javapoet/TypeSpec$Builder;->methodSpecs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_11
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/squareup/javapoet/MethodSpec;

    .line 798
    iget-object v8, p0, Lcom/squareup/javapoet/TypeSpec$Builder;->kind:Lcom/squareup/javapoet/TypeSpec$Kind;

    sget-object v9, Lcom/squareup/javapoet/TypeSpec$Kind;->INTERFACE:Lcom/squareup/javapoet/TypeSpec$Kind;

    if-ne v8, v9, :cond_12

    .line 799
    iget-object v8, v3, Lcom/squareup/javapoet/MethodSpec;->modifiers:Ljava/util/Set;

    new-array v9, v6, [Ljavax/lang/model/element/Modifier;

    sget-object v10, Ljavax/lang/model/element/Modifier;->ABSTRACT:Ljavax/lang/model/element/Modifier;

    aput-object v10, v9, v2

    sget-object v10, Ljavax/lang/model/element/Modifier;->STATIC:Ljavax/lang/model/element/Modifier;

    aput-object v10, v9, v1

    sget-object v10, Ljavax/lang/model/element/Modifier;->DEFAULT:Ljavax/lang/model/element/Modifier;

    aput-object v10, v9, v7

    invoke-static {v8, v9}, Lcom/squareup/javapoet/Util;->requireExactlyOneOf(Ljava/util/Set;[Ljavax/lang/model/element/Modifier;)V

    .line 801
    iget-object v8, v3, Lcom/squareup/javapoet/MethodSpec;->modifiers:Ljava/util/Set;

    new-array v9, v7, [Ljavax/lang/model/element/Modifier;

    sget-object v10, Ljavax/lang/model/element/Modifier;->PUBLIC:Ljavax/lang/model/element/Modifier;

    aput-object v10, v9, v2

    sget-object v10, Ljavax/lang/model/element/Modifier;->PRIVATE:Ljavax/lang/model/element/Modifier;

    aput-object v10, v9, v1

    invoke-static {v8, v9}, Lcom/squareup/javapoet/Util;->requireExactlyOneOf(Ljava/util/Set;[Ljavax/lang/model/element/Modifier;)V

    goto :goto_10

    .line 802
    :cond_12
    iget-object v8, p0, Lcom/squareup/javapoet/TypeSpec$Builder;->kind:Lcom/squareup/javapoet/TypeSpec$Kind;

    sget-object v9, Lcom/squareup/javapoet/TypeSpec$Kind;->ANNOTATION:Lcom/squareup/javapoet/TypeSpec$Kind;

    if-ne v8, v9, :cond_13

    .line 803
    iget-object v8, v3, Lcom/squareup/javapoet/MethodSpec;->modifiers:Ljava/util/Set;

    iget-object v9, p0, Lcom/squareup/javapoet/TypeSpec$Builder;->kind:Lcom/squareup/javapoet/TypeSpec$Kind;

    invoke-static {v9}, Lcom/squareup/javapoet/TypeSpec$Kind;->access$1000(Lcom/squareup/javapoet/TypeSpec$Kind;)Ljava/util/Set;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v8

    new-array v9, v4, [Ljava/lang/Object;

    iget-object v10, p0, Lcom/squareup/javapoet/TypeSpec$Builder;->kind:Lcom/squareup/javapoet/TypeSpec$Kind;

    aput-object v10, v9, v2

    iget-object v10, p0, Lcom/squareup/javapoet/TypeSpec$Builder;->name:Ljava/lang/String;

    aput-object v10, v9, v1

    iget-object v10, v3, Lcom/squareup/javapoet/MethodSpec;->name:Ljava/lang/String;

    aput-object v10, v9, v7

    iget-object v10, p0, Lcom/squareup/javapoet/TypeSpec$Builder;->kind:Lcom/squareup/javapoet/TypeSpec$Kind;

    .line 805
    invoke-static {v10}, Lcom/squareup/javapoet/TypeSpec$Kind;->access$1000(Lcom/squareup/javapoet/TypeSpec$Kind;)Ljava/util/Set;

    move-result-object v10

    aput-object v10, v9, v6

    .line 803
    invoke-static {v8, v5, v9}, Lcom/squareup/javapoet/Util;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 807
    :cond_13
    :goto_10
    iget-object v8, p0, Lcom/squareup/javapoet/TypeSpec$Builder;->kind:Lcom/squareup/javapoet/TypeSpec$Kind;

    sget-object v9, Lcom/squareup/javapoet/TypeSpec$Kind;->ANNOTATION:Lcom/squareup/javapoet/TypeSpec$Kind;

    if-eq v8, v9, :cond_15

    .line 808
    iget-object v8, v3, Lcom/squareup/javapoet/MethodSpec;->defaultValue:Lcom/squareup/javapoet/CodeBlock;

    if-nez v8, :cond_14

    move v8, v1

    goto :goto_11

    :cond_14
    move v8, v2

    :goto_11
    new-array v9, v6, [Ljava/lang/Object;

    iget-object v10, p0, Lcom/squareup/javapoet/TypeSpec$Builder;->kind:Lcom/squareup/javapoet/TypeSpec$Kind;

    aput-object v10, v9, v2

    iget-object v10, p0, Lcom/squareup/javapoet/TypeSpec$Builder;->name:Ljava/lang/String;

    aput-object v10, v9, v1

    iget-object v10, v3, Lcom/squareup/javapoet/MethodSpec;->name:Ljava/lang/String;

    aput-object v10, v9, v7

    const-string v10, "%s %s.%s cannot have a default value"

    invoke-static {v8, v10, v9}, Lcom/squareup/javapoet/Util;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 811
    :cond_15
    iget-object v8, p0, Lcom/squareup/javapoet/TypeSpec$Builder;->kind:Lcom/squareup/javapoet/TypeSpec$Kind;

    sget-object v9, Lcom/squareup/javapoet/TypeSpec$Kind;->INTERFACE:Lcom/squareup/javapoet/TypeSpec$Kind;

    if-eq v8, v9, :cond_11

    .line 812
    sget-object v8, Ljavax/lang/model/element/Modifier;->DEFAULT:Ljavax/lang/model/element/Modifier;

    invoke-virtual {v3, v8}, Lcom/squareup/javapoet/MethodSpec;->hasModifier(Ljavax/lang/model/element/Modifier;)Z

    move-result v8

    xor-int/2addr v8, v1

    new-array v9, v6, [Ljava/lang/Object;

    iget-object v10, p0, Lcom/squareup/javapoet/TypeSpec$Builder;->kind:Lcom/squareup/javapoet/TypeSpec$Kind;

    aput-object v10, v9, v2

    iget-object v10, p0, Lcom/squareup/javapoet/TypeSpec$Builder;->name:Ljava/lang/String;

    aput-object v10, v9, v1

    iget-object v3, v3, Lcom/squareup/javapoet/MethodSpec;->name:Ljava/lang/String;

    aput-object v3, v9, v7

    const-string v3, "%s %s.%s cannot be default"

    invoke-static {v8, v3, v9}, Lcom/squareup/javapoet/Util;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_f

    .line 817
    :cond_16
    iget-object v0, p0, Lcom/squareup/javapoet/TypeSpec$Builder;->typeSpecs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_17

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/squareup/javapoet/TypeSpec;

    .line 818
    iget-object v8, v3, Lcom/squareup/javapoet/TypeSpec;->modifiers:Ljava/util/Set;

    iget-object v9, p0, Lcom/squareup/javapoet/TypeSpec$Builder;->kind:Lcom/squareup/javapoet/TypeSpec$Kind;

    invoke-static {v9}, Lcom/squareup/javapoet/TypeSpec$Kind;->access$1100(Lcom/squareup/javapoet/TypeSpec$Kind;)Ljava/util/Set;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v8

    new-array v9, v4, [Ljava/lang/Object;

    iget-object v10, p0, Lcom/squareup/javapoet/TypeSpec$Builder;->kind:Lcom/squareup/javapoet/TypeSpec$Kind;

    aput-object v10, v9, v2

    iget-object v10, p0, Lcom/squareup/javapoet/TypeSpec$Builder;->name:Ljava/lang/String;

    aput-object v10, v9, v1

    iget-object v3, v3, Lcom/squareup/javapoet/TypeSpec;->name:Ljava/lang/String;

    aput-object v3, v9, v7

    iget-object v3, p0, Lcom/squareup/javapoet/TypeSpec$Builder;->kind:Lcom/squareup/javapoet/TypeSpec$Kind;

    .line 820
    invoke-static {v3}, Lcom/squareup/javapoet/TypeSpec$Kind;->access$1100(Lcom/squareup/javapoet/TypeSpec$Kind;)Ljava/util/Set;

    move-result-object v3

    aput-object v3, v9, v6

    .line 818
    invoke-static {v8, v5, v9}, Lcom/squareup/javapoet/Util;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_12

    .line 823
    :cond_17
    iget-object v0, p0, Lcom/squareup/javapoet/TypeSpec$Builder;->modifiers:Ljava/util/List;

    sget-object v3, Ljavax/lang/model/element/Modifier;->ABSTRACT:Ljavax/lang/model/element/Modifier;

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/squareup/javapoet/TypeSpec$Builder;->kind:Lcom/squareup/javapoet/TypeSpec$Kind;

    sget-object v3, Lcom/squareup/javapoet/TypeSpec$Kind;->CLASS:Lcom/squareup/javapoet/TypeSpec$Kind;

    if-eq v0, v3, :cond_18

    goto :goto_13

    :cond_18
    move v0, v2

    goto :goto_14

    :cond_19
    :goto_13
    move v0, v1

    .line 824
    :goto_14
    iget-object v3, p0, Lcom/squareup/javapoet/TypeSpec$Builder;->methodSpecs:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_15
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/squareup/javapoet/MethodSpec;

    if-nez v0, :cond_1b

    .line 825
    sget-object v5, Ljavax/lang/model/element/Modifier;->ABSTRACT:Ljavax/lang/model/element/Modifier;

    invoke-virtual {v4, v5}, Lcom/squareup/javapoet/MethodSpec;->hasModifier(Ljavax/lang/model/element/Modifier;)Z

    move-result v5

    if-nez v5, :cond_1a

    goto :goto_16

    :cond_1a
    move v5, v2

    goto :goto_17

    :cond_1b
    :goto_16
    move v5, v1

    :goto_17
    new-array v6, v7, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/squareup/javapoet/TypeSpec$Builder;->name:Ljava/lang/String;

    aput-object v8, v6, v2

    iget-object v4, v4, Lcom/squareup/javapoet/MethodSpec;->name:Ljava/lang/String;

    aput-object v4, v6, v1

    const-string v4, "non-abstract type %s cannot declare abstract method %s"

    invoke-static {v5, v4, v6}, Lcom/squareup/javapoet/Util;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_15

    .line 829
    :cond_1c
    iget-object v0, p0, Lcom/squareup/javapoet/TypeSpec$Builder;->superclass:Lcom/squareup/javapoet/TypeName;

    sget-object v3, Lcom/squareup/javapoet/ClassName;->OBJECT:Lcom/squareup/javapoet/ClassName;

    invoke-virtual {v0, v3}, Lcom/squareup/javapoet/TypeName;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v1

    .line 830
    iget-object v3, p0, Lcom/squareup/javapoet/TypeSpec$Builder;->superinterfaces:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v0, v3

    .line 831
    iget-object v3, p0, Lcom/squareup/javapoet/TypeSpec$Builder;->anonymousTypeArguments:Lcom/squareup/javapoet/CodeBlock;

    if-eqz v3, :cond_1e

    if-gt v0, v1, :cond_1d

    goto :goto_18

    :cond_1d
    move v1, v2

    :cond_1e
    :goto_18
    new-array v0, v2, [Ljava/lang/Object;

    const-string v2, "anonymous type has too many supertypes"

    invoke-static {v1, v2, v0}, Lcom/squareup/javapoet/Util;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 834
    new-instance v0, Lcom/squareup/javapoet/TypeSpec;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/squareup/javapoet/TypeSpec;-><init>(Lcom/squareup/javapoet/TypeSpec$Builder;Lcom/squareup/javapoet/TypeSpec$1;)V

    return-object v0
.end method

.method public superclass(Lcom/squareup/javapoet/TypeName;)Lcom/squareup/javapoet/TypeSpec$Builder;
    .locals 5

    .line 489
    iget-object v0, p0, Lcom/squareup/javapoet/TypeSpec$Builder;->kind:Lcom/squareup/javapoet/TypeSpec$Kind;

    sget-object v1, Lcom/squareup/javapoet/TypeSpec$Kind;->CLASS:Lcom/squareup/javapoet/TypeSpec$Kind;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "only classes have super classes, not "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/squareup/javapoet/TypeSpec$Builder;->kind:Lcom/squareup/javapoet/TypeSpec$Kind;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v4}, Lcom/squareup/javapoet/Util;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 490
    iget-object v0, p0, Lcom/squareup/javapoet/TypeSpec$Builder;->superclass:Lcom/squareup/javapoet/TypeName;

    sget-object v1, Lcom/squareup/javapoet/ClassName;->OBJECT:Lcom/squareup/javapoet/ClassName;

    if-ne v0, v1, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v3

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "superclass already set to "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/squareup/javapoet/TypeSpec$Builder;->superclass:Lcom/squareup/javapoet/TypeName;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v4}, Lcom/squareup/javapoet/Util;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 492
    invoke-virtual {p1}, Lcom/squareup/javapoet/TypeName;->isPrimitive()Z

    move-result v0

    xor-int/2addr v0, v2

    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "superclass may not be a primitive"

    invoke-static {v0, v2, v1}, Lcom/squareup/javapoet/Util;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 493
    iput-object p1, p0, Lcom/squareup/javapoet/TypeSpec$Builder;->superclass:Lcom/squareup/javapoet/TypeName;

    return-object p0
.end method

.method public superclass(Ljava/lang/reflect/Type;)Lcom/squareup/javapoet/TypeSpec$Builder;
    .locals 1

    const/4 v0, 0x1

    .line 498
    invoke-virtual {p0, p1, v0}, Lcom/squareup/javapoet/TypeSpec$Builder;->superclass(Ljava/lang/reflect/Type;Z)Lcom/squareup/javapoet/TypeSpec$Builder;

    move-result-object p1

    return-object p1
.end method

.method public superclass(Ljava/lang/reflect/Type;Z)Lcom/squareup/javapoet/TypeSpec$Builder;
    .locals 1

    .line 502
    invoke-static {p1}, Lcom/squareup/javapoet/TypeName;->get(Ljava/lang/reflect/Type;)Lcom/squareup/javapoet/TypeName;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/squareup/javapoet/TypeSpec$Builder;->superclass(Lcom/squareup/javapoet/TypeName;)Lcom/squareup/javapoet/TypeSpec$Builder;

    if-eqz p2, :cond_0

    .line 504
    invoke-direct {p0, p1}, Lcom/squareup/javapoet/TypeSpec$Builder;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 506
    invoke-virtual {p0, p1}, Lcom/squareup/javapoet/TypeSpec$Builder;->avoidClashesWithNestedClasses(Ljava/lang/Class;)Lcom/squareup/javapoet/TypeSpec$Builder;

    :cond_0
    return-object p0
.end method

.method public superclass(Ljavax/lang/model/type/TypeMirror;)Lcom/squareup/javapoet/TypeSpec$Builder;
    .locals 1

    const/4 v0, 0x1

    .line 513
    invoke-virtual {p0, p1, v0}, Lcom/squareup/javapoet/TypeSpec$Builder;->superclass(Ljavax/lang/model/type/TypeMirror;Z)Lcom/squareup/javapoet/TypeSpec$Builder;

    move-result-object p1

    return-object p1
.end method

.method public superclass(Ljavax/lang/model/type/TypeMirror;Z)Lcom/squareup/javapoet/TypeSpec$Builder;
    .locals 1

    .line 517
    invoke-static {p1}, Lcom/squareup/javapoet/TypeName;->get(Ljavax/lang/model/type/TypeMirror;)Lcom/squareup/javapoet/TypeName;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/squareup/javapoet/TypeSpec$Builder;->superclass(Lcom/squareup/javapoet/TypeName;)Lcom/squareup/javapoet/TypeSpec$Builder;

    if-eqz p2, :cond_0

    .line 518
    instance-of p2, p1, Ljavax/lang/model/type/DeclaredType;

    if-eqz p2, :cond_0

    .line 519
    check-cast p1, Ljavax/lang/model/type/DeclaredType;

    .line 520
    invoke-interface {p1}, Ljavax/lang/model/type/DeclaredType;->asElement()Ljavax/lang/model/element/Element;

    move-result-object p1

    check-cast p1, Ljavax/lang/model/element/TypeElement;

    .line 521
    invoke-virtual {p0, p1}, Lcom/squareup/javapoet/TypeSpec$Builder;->avoidClashesWithNestedClasses(Ljavax/lang/model/element/TypeElement;)Lcom/squareup/javapoet/TypeSpec$Builder;

    :cond_0
    return-object p0
.end method
