.class public final Lcom/squareup/javapoet/FieldSpec$Builder;
.super Ljava/lang/Object;
.source "FieldSpec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/javapoet/FieldSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public final annotations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/squareup/javapoet/AnnotationSpec;",
            ">;"
        }
    .end annotation
.end field

.field private initializer:Lcom/squareup/javapoet/CodeBlock;

.field private final javadoc:Lcom/squareup/javapoet/CodeBlock$Builder;

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

.field private final type:Lcom/squareup/javapoet/TypeName;


# direct methods
.method private constructor <init>(Lcom/squareup/javapoet/TypeName;Ljava/lang/String;)V
    .locals 1

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    invoke-static {}, Lcom/squareup/javapoet/CodeBlock;->builder()Lcom/squareup/javapoet/CodeBlock$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/javapoet/FieldSpec$Builder;->javadoc:Lcom/squareup/javapoet/CodeBlock$Builder;

    const/4 v0, 0x0

    .line 114
    iput-object v0, p0, Lcom/squareup/javapoet/FieldSpec$Builder;->initializer:Lcom/squareup/javapoet/CodeBlock;

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/squareup/javapoet/FieldSpec$Builder;->annotations:Ljava/util/List;

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/squareup/javapoet/FieldSpec$Builder;->modifiers:Ljava/util/List;

    .line 120
    iput-object p1, p0, Lcom/squareup/javapoet/FieldSpec$Builder;->type:Lcom/squareup/javapoet/TypeName;

    .line 121
    iput-object p2, p0, Lcom/squareup/javapoet/FieldSpec$Builder;->name:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/squareup/javapoet/TypeName;Ljava/lang/String;Lcom/squareup/javapoet/FieldSpec$1;)V
    .locals 0

    .line 109
    invoke-direct {p0, p1, p2}, Lcom/squareup/javapoet/FieldSpec$Builder;-><init>(Lcom/squareup/javapoet/TypeName;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/squareup/javapoet/FieldSpec$Builder;)Lcom/squareup/javapoet/TypeName;
    .locals 0

    .line 109
    iget-object p0, p0, Lcom/squareup/javapoet/FieldSpec$Builder;->type:Lcom/squareup/javapoet/TypeName;

    return-object p0
.end method

.method static synthetic access$100(Lcom/squareup/javapoet/FieldSpec$Builder;)Ljava/lang/String;
    .locals 0

    .line 109
    iget-object p0, p0, Lcom/squareup/javapoet/FieldSpec$Builder;->name:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/squareup/javapoet/FieldSpec$Builder;)Lcom/squareup/javapoet/CodeBlock$Builder;
    .locals 0

    .line 109
    iget-object p0, p0, Lcom/squareup/javapoet/FieldSpec$Builder;->javadoc:Lcom/squareup/javapoet/CodeBlock$Builder;

    return-object p0
.end method

.method static synthetic access$300(Lcom/squareup/javapoet/FieldSpec$Builder;)Lcom/squareup/javapoet/CodeBlock;
    .locals 0

    .line 109
    iget-object p0, p0, Lcom/squareup/javapoet/FieldSpec$Builder;->initializer:Lcom/squareup/javapoet/CodeBlock;

    return-object p0
.end method

.method static synthetic access$302(Lcom/squareup/javapoet/FieldSpec$Builder;Lcom/squareup/javapoet/CodeBlock;)Lcom/squareup/javapoet/CodeBlock;
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/squareup/javapoet/FieldSpec$Builder;->initializer:Lcom/squareup/javapoet/CodeBlock;

    return-object p1
.end method


# virtual methods
.method public addAnnotation(Lcom/squareup/javapoet/AnnotationSpec;)Lcom/squareup/javapoet/FieldSpec$Builder;
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/squareup/javapoet/FieldSpec$Builder;->annotations:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addAnnotation(Lcom/squareup/javapoet/ClassName;)Lcom/squareup/javapoet/FieldSpec$Builder;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/squareup/javapoet/FieldSpec$Builder;->annotations:Ljava/util/List;

    invoke-static {p1}, Lcom/squareup/javapoet/AnnotationSpec;->builder(Lcom/squareup/javapoet/ClassName;)Lcom/squareup/javapoet/AnnotationSpec$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/squareup/javapoet/AnnotationSpec$Builder;->build()Lcom/squareup/javapoet/AnnotationSpec;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addAnnotation(Ljava/lang/Class;)Lcom/squareup/javapoet/FieldSpec$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/squareup/javapoet/FieldSpec$Builder;"
        }
    .end annotation

    .line 153
    invoke-static {p1}, Lcom/squareup/javapoet/ClassName;->get(Ljava/lang/Class;)Lcom/squareup/javapoet/ClassName;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/squareup/javapoet/FieldSpec$Builder;->addAnnotation(Lcom/squareup/javapoet/ClassName;)Lcom/squareup/javapoet/FieldSpec$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addAnnotations(Ljava/lang/Iterable;)Lcom/squareup/javapoet/FieldSpec$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/squareup/javapoet/AnnotationSpec;",
            ">;)",
            "Lcom/squareup/javapoet/FieldSpec$Builder;"
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

    .line 135
    invoke-static {v1, v2, v0}, Lcom/squareup/javapoet/Util;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 136
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/javapoet/AnnotationSpec;

    .line 137
    iget-object v1, p0, Lcom/squareup/javapoet/FieldSpec$Builder;->annotations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    return-object p0
.end method

.method public addJavadoc(Lcom/squareup/javapoet/CodeBlock;)Lcom/squareup/javapoet/FieldSpec$Builder;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/squareup/javapoet/FieldSpec$Builder;->javadoc:Lcom/squareup/javapoet/CodeBlock$Builder;

    invoke-virtual {v0, p1}, Lcom/squareup/javapoet/CodeBlock$Builder;->add(Lcom/squareup/javapoet/CodeBlock;)Lcom/squareup/javapoet/CodeBlock$Builder;

    return-object p0
.end method

.method public varargs addJavadoc(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/FieldSpec$Builder;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/squareup/javapoet/FieldSpec$Builder;->javadoc:Lcom/squareup/javapoet/CodeBlock$Builder;

    invoke-virtual {v0, p1, p2}, Lcom/squareup/javapoet/CodeBlock$Builder;->add(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/CodeBlock$Builder;

    return-object p0
.end method

.method public varargs addModifiers([Ljavax/lang/model/element/Modifier;)Lcom/squareup/javapoet/FieldSpec$Builder;
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/squareup/javapoet/FieldSpec$Builder;->modifiers:Ljava/util/List;

    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-object p0
.end method

.method public build()Lcom/squareup/javapoet/FieldSpec;
    .locals 2

    .line 172
    new-instance v0, Lcom/squareup/javapoet/FieldSpec;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/squareup/javapoet/FieldSpec;-><init>(Lcom/squareup/javapoet/FieldSpec$Builder;Lcom/squareup/javapoet/FieldSpec$1;)V

    return-object v0
.end method

.method public initializer(Lcom/squareup/javapoet/CodeBlock;)Lcom/squareup/javapoet/FieldSpec$Builder;
    .locals 4

    .line 166
    iget-object v0, p0, Lcom/squareup/javapoet/FieldSpec$Builder;->initializer:Lcom/squareup/javapoet/CodeBlock;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "initializer was already set"

    invoke-static {v0, v3, v2}, Lcom/squareup/javapoet/Util;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "codeBlock == null"

    .line 167
    invoke-static {p1, v1, v0}, Lcom/squareup/javapoet/Util;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/squareup/javapoet/CodeBlock;

    iput-object p1, p0, Lcom/squareup/javapoet/FieldSpec$Builder;->initializer:Lcom/squareup/javapoet/CodeBlock;

    return-object p0
.end method

.method public varargs initializer(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/FieldSpec$Builder;
    .locals 0

    .line 162
    invoke-static {p1, p2}, Lcom/squareup/javapoet/CodeBlock;->of(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/CodeBlock;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/squareup/javapoet/FieldSpec$Builder;->initializer(Lcom/squareup/javapoet/CodeBlock;)Lcom/squareup/javapoet/FieldSpec$Builder;

    move-result-object p1

    return-object p1
.end method
