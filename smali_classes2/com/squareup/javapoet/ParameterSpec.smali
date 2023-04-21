.class public final Lcom/squareup/javapoet/ParameterSpec;
.super Ljava/lang/Object;
.source "ParameterSpec.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/javapoet/ParameterSpec$Builder;
    }
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

.field public final javadoc:Lcom/squareup/javapoet/CodeBlock;

.field public final modifiers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljavax/lang/model/element/Modifier;",
            ">;"
        }
    .end annotation
.end field

.field public final name:Ljava/lang/String;

.field public final type:Lcom/squareup/javapoet/TypeName;


# direct methods
.method private constructor <init>(Lcom/squareup/javapoet/ParameterSpec$Builder;)V
    .locals 4

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-static {p1}, Lcom/squareup/javapoet/ParameterSpec$Builder;->access$000(Lcom/squareup/javapoet/ParameterSpec$Builder;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "name == null"

    invoke-static {v0, v3, v2}, Lcom/squareup/javapoet/Util;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/squareup/javapoet/ParameterSpec;->name:Ljava/lang/String;

    .line 43
    iget-object v0, p1, Lcom/squareup/javapoet/ParameterSpec$Builder;->annotations:Ljava/util/List;

    invoke-static {v0}, Lcom/squareup/javapoet/Util;->immutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/javapoet/ParameterSpec;->annotations:Ljava/util/List;

    .line 44
    iget-object v0, p1, Lcom/squareup/javapoet/ParameterSpec$Builder;->modifiers:Ljava/util/List;

    invoke-static {v0}, Lcom/squareup/javapoet/Util;->immutableSet(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/javapoet/ParameterSpec;->modifiers:Ljava/util/Set;

    .line 45
    invoke-static {p1}, Lcom/squareup/javapoet/ParameterSpec$Builder;->access$100(Lcom/squareup/javapoet/ParameterSpec$Builder;)Lcom/squareup/javapoet/TypeName;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "type == null"

    invoke-static {v0, v2, v1}, Lcom/squareup/javapoet/Util;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/javapoet/TypeName;

    iput-object v0, p0, Lcom/squareup/javapoet/ParameterSpec;->type:Lcom/squareup/javapoet/TypeName;

    .line 46
    invoke-static {p1}, Lcom/squareup/javapoet/ParameterSpec$Builder;->access$200(Lcom/squareup/javapoet/ParameterSpec$Builder;)Lcom/squareup/javapoet/CodeBlock$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/squareup/javapoet/CodeBlock$Builder;->build()Lcom/squareup/javapoet/CodeBlock;

    move-result-object p1

    iput-object p1, p0, Lcom/squareup/javapoet/ParameterSpec;->javadoc:Lcom/squareup/javapoet/CodeBlock;

    return-void
.end method

.method synthetic constructor <init>(Lcom/squareup/javapoet/ParameterSpec$Builder;Lcom/squareup/javapoet/ParameterSpec$1;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/squareup/javapoet/ParameterSpec;-><init>(Lcom/squareup/javapoet/ParameterSpec$Builder;)V

    return-void
.end method

.method public static varargs builder(Lcom/squareup/javapoet/TypeName;Ljava/lang/String;[Ljavax/lang/model/element/Modifier;)Lcom/squareup/javapoet/ParameterSpec$Builder;
    .locals 3

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "type == null"

    .line 116
    invoke-static {p0, v2, v1}, Lcom/squareup/javapoet/Util;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    invoke-static {p1}, Lcom/squareup/javapoet/ParameterSpec;->isValidParameterName(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v0

    const-string v0, "not a valid name: %s"

    invoke-static {v1, v0, v2}, Lcom/squareup/javapoet/Util;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 118
    new-instance v0, Lcom/squareup/javapoet/ParameterSpec$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/squareup/javapoet/ParameterSpec$Builder;-><init>(Lcom/squareup/javapoet/TypeName;Ljava/lang/String;Lcom/squareup/javapoet/ParameterSpec$1;)V

    .line 119
    invoke-virtual {v0, p2}, Lcom/squareup/javapoet/ParameterSpec$Builder;->addModifiers([Ljavax/lang/model/element/Modifier;)Lcom/squareup/javapoet/ParameterSpec$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static varargs builder(Ljava/lang/reflect/Type;Ljava/lang/String;[Ljavax/lang/model/element/Modifier;)Lcom/squareup/javapoet/ParameterSpec$Builder;
    .locals 0

    .line 123
    invoke-static {p0}, Lcom/squareup/javapoet/TypeName;->get(Ljava/lang/reflect/Type;)Lcom/squareup/javapoet/TypeName;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/squareup/javapoet/ParameterSpec;->builder(Lcom/squareup/javapoet/TypeName;Ljava/lang/String;[Ljavax/lang/model/element/Modifier;)Lcom/squareup/javapoet/ParameterSpec$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static get(Ljavax/lang/model/element/VariableElement;)Lcom/squareup/javapoet/ParameterSpec;
    .locals 4

    .line 87
    invoke-interface {p0}, Ljavax/lang/model/element/VariableElement;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/element/ElementKind;->PARAMETER:Ljavax/lang/model/element/ElementKind;

    invoke-virtual {v0, v1}, Ljavax/lang/model/element/ElementKind;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "element is not a parameter"

    invoke-static {v0, v3, v2}, Lcom/squareup/javapoet/Util;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 89
    invoke-interface {p0}, Ljavax/lang/model/element/VariableElement;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/javapoet/TypeName;->get(Ljavax/lang/model/type/TypeMirror;)Lcom/squareup/javapoet/TypeName;

    move-result-object v0

    .line 90
    invoke-interface {p0}, Ljavax/lang/model/element/VariableElement;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljavax/lang/model/element/Modifier;

    .line 93
    invoke-static {v0, v2, v1}, Lcom/squareup/javapoet/ParameterSpec;->builder(Lcom/squareup/javapoet/TypeName;Ljava/lang/String;[Ljavax/lang/model/element/Modifier;)Lcom/squareup/javapoet/ParameterSpec$Builder;

    move-result-object v0

    .line 94
    invoke-interface {p0}, Ljavax/lang/model/element/VariableElement;->getModifiers()Ljava/util/Set;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/squareup/javapoet/ParameterSpec$Builder;->addModifiers(Ljava/lang/Iterable;)Lcom/squareup/javapoet/ParameterSpec$Builder;

    move-result-object p0

    .line 95
    invoke-virtual {p0}, Lcom/squareup/javapoet/ParameterSpec$Builder;->build()Lcom/squareup/javapoet/ParameterSpec;

    move-result-object p0

    return-object p0
.end method

.method private static isValidParameterName(Ljava/lang/String;)Z
    .locals 2

    const-string v0, ".this"

    .line 109
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x5

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljavax/lang/model/SourceVersion;->isIdentifier(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0

    :cond_0
    const-string v0, "this"

    .line 112
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Ljavax/lang/model/SourceVersion;->isName(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method static parametersOf(Ljavax/lang/model/element/ExecutableElement;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/ExecutableElement;",
            ")",
            "Ljava/util/List<",
            "Lcom/squareup/javapoet/ParameterSpec;",
            ">;"
        }
    .end annotation

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 100
    invoke-interface {p0}, Ljavax/lang/model/element/ExecutableElement;->getParameters()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/lang/model/element/VariableElement;

    .line 101
    invoke-static {v1}, Lcom/squareup/javapoet/ParameterSpec;->get(Ljavax/lang/model/element/VariableElement;)Lcom/squareup/javapoet/ParameterSpec;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method emit(Lcom/squareup/javapoet/CodeWriter;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/squareup/javapoet/ParameterSpec;->annotations:Ljava/util/List;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/squareup/javapoet/CodeWriter;->emitAnnotations(Ljava/util/List;Z)V

    .line 55
    iget-object v0, p0, Lcom/squareup/javapoet/ParameterSpec;->modifiers:Ljava/util/Set;

    invoke-virtual {p1, v0}, Lcom/squareup/javapoet/CodeWriter;->emitModifiers(Ljava/util/Set;)V

    if-eqz p2, :cond_0

    .line 57
    iget-object p2, p0, Lcom/squareup/javapoet/ParameterSpec;->type:Lcom/squareup/javapoet/TypeName;

    invoke-static {p2}, Lcom/squareup/javapoet/TypeName;->asArray(Lcom/squareup/javapoet/TypeName;)Lcom/squareup/javapoet/ArrayTypeName;

    move-result-object p2

    invoke-virtual {p2, p1, v1}, Lcom/squareup/javapoet/ArrayTypeName;->emit(Lcom/squareup/javapoet/CodeWriter;Z)Lcom/squareup/javapoet/CodeWriter;

    goto :goto_0

    .line 59
    :cond_0
    iget-object p2, p0, Lcom/squareup/javapoet/ParameterSpec;->type:Lcom/squareup/javapoet/TypeName;

    invoke-virtual {p2, p1}, Lcom/squareup/javapoet/TypeName;->emit(Lcom/squareup/javapoet/CodeWriter;)Lcom/squareup/javapoet/CodeWriter;

    :goto_0
    new-array p2, v1, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 61
    iget-object v1, p0, Lcom/squareup/javapoet/ParameterSpec;->name:Ljava/lang/String;

    aput-object v1, p2, v0

    const-string v0, " $L"

    invoke-virtual {p1, v0, p2}, Lcom/squareup/javapoet/CodeWriter;->emit(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/CodeWriter;

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    .line 67
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    return v0

    .line 68
    :cond_2
    invoke-virtual {p0}, Lcom/squareup/javapoet/ParameterSpec;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hasModifier(Ljavax/lang/model/element/Modifier;)Z
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/squareup/javapoet/ParameterSpec;->modifiers:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 72
    invoke-virtual {p0}, Lcom/squareup/javapoet/ParameterSpec;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toBuilder()Lcom/squareup/javapoet/ParameterSpec$Builder;
    .locals 2

    .line 127
    iget-object v0, p0, Lcom/squareup/javapoet/ParameterSpec;->type:Lcom/squareup/javapoet/TypeName;

    iget-object v1, p0, Lcom/squareup/javapoet/ParameterSpec;->name:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/squareup/javapoet/ParameterSpec;->toBuilder(Lcom/squareup/javapoet/TypeName;Ljava/lang/String;)Lcom/squareup/javapoet/ParameterSpec$Builder;

    move-result-object v0

    return-object v0
.end method

.method toBuilder(Lcom/squareup/javapoet/TypeName;Ljava/lang/String;)Lcom/squareup/javapoet/ParameterSpec$Builder;
    .locals 2

    .line 131
    new-instance v0, Lcom/squareup/javapoet/ParameterSpec$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/squareup/javapoet/ParameterSpec$Builder;-><init>(Lcom/squareup/javapoet/TypeName;Ljava/lang/String;Lcom/squareup/javapoet/ParameterSpec$1;)V

    .line 132
    iget-object p1, v0, Lcom/squareup/javapoet/ParameterSpec$Builder;->annotations:Ljava/util/List;

    iget-object p2, p0, Lcom/squareup/javapoet/ParameterSpec;->annotations:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 133
    iget-object p1, v0, Lcom/squareup/javapoet/ParameterSpec$Builder;->modifiers:Ljava/util/List;

    iget-object p2, p0, Lcom/squareup/javapoet/ParameterSpec;->modifiers:Ljava/util/Set;

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    :try_start_0
    new-instance v1, Lcom/squareup/javapoet/CodeWriter;

    invoke-direct {v1, v0}, Lcom/squareup/javapoet/CodeWriter;-><init>(Ljava/lang/Appendable;)V

    const/4 v2, 0x0

    .line 79
    invoke-virtual {p0, v1, v2}, Lcom/squareup/javapoet/ParameterSpec;->emit(Lcom/squareup/javapoet/CodeWriter;Z)V

    .line 80
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 82
    :catch_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method
