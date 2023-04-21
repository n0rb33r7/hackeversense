.class public final Lcom/squareup/javapoet/FieldSpec;
.super Ljava/lang/Object;
.source "FieldSpec.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/javapoet/FieldSpec$Builder;
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

.field public final initializer:Lcom/squareup/javapoet/CodeBlock;

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
.method private constructor <init>(Lcom/squareup/javapoet/FieldSpec$Builder;)V
    .locals 4

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-static {p1}, Lcom/squareup/javapoet/FieldSpec$Builder;->access$000(Lcom/squareup/javapoet/FieldSpec$Builder;)Lcom/squareup/javapoet/TypeName;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "type == null"

    invoke-static {v0, v3, v2}, Lcom/squareup/javapoet/Util;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/javapoet/TypeName;

    iput-object v0, p0, Lcom/squareup/javapoet/FieldSpec;->type:Lcom/squareup/javapoet/TypeName;

    .line 42
    invoke-static {p1}, Lcom/squareup/javapoet/FieldSpec$Builder;->access$100(Lcom/squareup/javapoet/FieldSpec$Builder;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "name == null"

    invoke-static {v0, v2, v1}, Lcom/squareup/javapoet/Util;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/squareup/javapoet/FieldSpec;->name:Ljava/lang/String;

    .line 43
    invoke-static {p1}, Lcom/squareup/javapoet/FieldSpec$Builder;->access$200(Lcom/squareup/javapoet/FieldSpec$Builder;)Lcom/squareup/javapoet/CodeBlock$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/javapoet/CodeBlock$Builder;->build()Lcom/squareup/javapoet/CodeBlock;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/javapoet/FieldSpec;->javadoc:Lcom/squareup/javapoet/CodeBlock;

    .line 44
    iget-object v0, p1, Lcom/squareup/javapoet/FieldSpec$Builder;->annotations:Ljava/util/List;

    invoke-static {v0}, Lcom/squareup/javapoet/Util;->immutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/javapoet/FieldSpec;->annotations:Ljava/util/List;

    .line 45
    iget-object v0, p1, Lcom/squareup/javapoet/FieldSpec$Builder;->modifiers:Ljava/util/List;

    invoke-static {v0}, Lcom/squareup/javapoet/Util;->immutableSet(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/javapoet/FieldSpec;->modifiers:Ljava/util/Set;

    .line 46
    invoke-static {p1}, Lcom/squareup/javapoet/FieldSpec$Builder;->access$300(Lcom/squareup/javapoet/FieldSpec$Builder;)Lcom/squareup/javapoet/CodeBlock;

    move-result-object v0

    if-nez v0, :cond_0

    .line 47
    invoke-static {}, Lcom/squareup/javapoet/CodeBlock;->builder()Lcom/squareup/javapoet/CodeBlock$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/squareup/javapoet/CodeBlock$Builder;->build()Lcom/squareup/javapoet/CodeBlock;

    move-result-object p1

    goto :goto_0

    .line 48
    :cond_0
    invoke-static {p1}, Lcom/squareup/javapoet/FieldSpec$Builder;->access$300(Lcom/squareup/javapoet/FieldSpec$Builder;)Lcom/squareup/javapoet/CodeBlock;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/squareup/javapoet/FieldSpec;->initializer:Lcom/squareup/javapoet/CodeBlock;

    return-void
.end method

.method synthetic constructor <init>(Lcom/squareup/javapoet/FieldSpec$Builder;Lcom/squareup/javapoet/FieldSpec$1;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/squareup/javapoet/FieldSpec;-><init>(Lcom/squareup/javapoet/FieldSpec$Builder;)V

    return-void
.end method

.method public static varargs builder(Lcom/squareup/javapoet/TypeName;Ljava/lang/String;[Ljavax/lang/model/element/Modifier;)Lcom/squareup/javapoet/FieldSpec$Builder;
    .locals 3

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "type == null"

    .line 90
    invoke-static {p0, v2, v1}, Lcom/squareup/javapoet/Util;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    invoke-static {p1}, Ljavax/lang/model/SourceVersion;->isName(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v0

    const-string v0, "not a valid name: %s"

    invoke-static {v1, v0, v2}, Lcom/squareup/javapoet/Util;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 92
    new-instance v0, Lcom/squareup/javapoet/FieldSpec$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/squareup/javapoet/FieldSpec$Builder;-><init>(Lcom/squareup/javapoet/TypeName;Ljava/lang/String;Lcom/squareup/javapoet/FieldSpec$1;)V

    .line 93
    invoke-virtual {v0, p2}, Lcom/squareup/javapoet/FieldSpec$Builder;->addModifiers([Ljavax/lang/model/element/Modifier;)Lcom/squareup/javapoet/FieldSpec$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static varargs builder(Ljava/lang/reflect/Type;Ljava/lang/String;[Ljavax/lang/model/element/Modifier;)Lcom/squareup/javapoet/FieldSpec$Builder;
    .locals 0

    .line 97
    invoke-static {p0}, Lcom/squareup/javapoet/TypeName;->get(Ljava/lang/reflect/Type;)Lcom/squareup/javapoet/TypeName;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/squareup/javapoet/FieldSpec;->builder(Lcom/squareup/javapoet/TypeName;Ljava/lang/String;[Ljavax/lang/model/element/Modifier;)Lcom/squareup/javapoet/FieldSpec$Builder;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method emit(Lcom/squareup/javapoet/CodeWriter;Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/javapoet/CodeWriter;",
            "Ljava/util/Set<",
            "Ljavax/lang/model/element/Modifier;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lcom/squareup/javapoet/FieldSpec;->javadoc:Lcom/squareup/javapoet/CodeBlock;

    invoke-virtual {p1, v0}, Lcom/squareup/javapoet/CodeWriter;->emitJavadoc(Lcom/squareup/javapoet/CodeBlock;)V

    .line 57
    iget-object v0, p0, Lcom/squareup/javapoet/FieldSpec;->annotations:Ljava/util/List;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/squareup/javapoet/CodeWriter;->emitAnnotations(Ljava/util/List;Z)V

    .line 58
    iget-object v0, p0, Lcom/squareup/javapoet/FieldSpec;->modifiers:Ljava/util/Set;

    invoke-virtual {p1, v0, p2}, Lcom/squareup/javapoet/CodeWriter;->emitModifiers(Ljava/util/Set;Ljava/util/Set;)V

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    .line 59
    iget-object v0, p0, Lcom/squareup/javapoet/FieldSpec;->type:Lcom/squareup/javapoet/TypeName;

    aput-object v0, p2, v1

    iget-object v0, p0, Lcom/squareup/javapoet/FieldSpec;->name:Ljava/lang/String;

    const/4 v1, 0x1

    aput-object v0, p2, v1

    const-string v0, "$T $L"

    invoke-virtual {p1, v0, p2}, Lcom/squareup/javapoet/CodeWriter;->emit(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/CodeWriter;

    .line 60
    iget-object p2, p0, Lcom/squareup/javapoet/FieldSpec;->initializer:Lcom/squareup/javapoet/CodeBlock;

    invoke-virtual {p2}, Lcom/squareup/javapoet/CodeBlock;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, " = "

    .line 61
    invoke-virtual {p1, p2}, Lcom/squareup/javapoet/CodeWriter;->emit(Ljava/lang/String;)Lcom/squareup/javapoet/CodeWriter;

    .line 62
    iget-object p2, p0, Lcom/squareup/javapoet/FieldSpec;->initializer:Lcom/squareup/javapoet/CodeBlock;

    invoke-virtual {p1, p2}, Lcom/squareup/javapoet/CodeWriter;->emit(Lcom/squareup/javapoet/CodeBlock;)Lcom/squareup/javapoet/CodeWriter;

    :cond_0
    const-string p2, ";\n"

    .line 64
    invoke-virtual {p1, p2}, Lcom/squareup/javapoet/CodeWriter;->emit(Ljava/lang/String;)Lcom/squareup/javapoet/CodeWriter;

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

    .line 70
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    return v0

    .line 71
    :cond_2
    invoke-virtual {p0}, Lcom/squareup/javapoet/FieldSpec;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hasModifier(Ljavax/lang/model/element/Modifier;)Z
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/squareup/javapoet/FieldSpec;->modifiers:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 75
    invoke-virtual {p0}, Lcom/squareup/javapoet/FieldSpec;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toBuilder()Lcom/squareup/javapoet/FieldSpec$Builder;
    .locals 4

    .line 101
    new-instance v0, Lcom/squareup/javapoet/FieldSpec$Builder;

    iget-object v1, p0, Lcom/squareup/javapoet/FieldSpec;->type:Lcom/squareup/javapoet/TypeName;

    iget-object v2, p0, Lcom/squareup/javapoet/FieldSpec;->name:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/squareup/javapoet/FieldSpec$Builder;-><init>(Lcom/squareup/javapoet/TypeName;Ljava/lang/String;Lcom/squareup/javapoet/FieldSpec$1;)V

    .line 102
    invoke-static {v0}, Lcom/squareup/javapoet/FieldSpec$Builder;->access$200(Lcom/squareup/javapoet/FieldSpec$Builder;)Lcom/squareup/javapoet/CodeBlock$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/squareup/javapoet/FieldSpec;->javadoc:Lcom/squareup/javapoet/CodeBlock;

    invoke-virtual {v1, v2}, Lcom/squareup/javapoet/CodeBlock$Builder;->add(Lcom/squareup/javapoet/CodeBlock;)Lcom/squareup/javapoet/CodeBlock$Builder;

    .line 103
    iget-object v1, v0, Lcom/squareup/javapoet/FieldSpec$Builder;->annotations:Ljava/util/List;

    iget-object v2, p0, Lcom/squareup/javapoet/FieldSpec;->annotations:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 104
    iget-object v1, v0, Lcom/squareup/javapoet/FieldSpec$Builder;->modifiers:Ljava/util/List;

    iget-object v2, p0, Lcom/squareup/javapoet/FieldSpec;->modifiers:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 105
    iget-object v1, p0, Lcom/squareup/javapoet/FieldSpec;->initializer:Lcom/squareup/javapoet/CodeBlock;

    invoke-virtual {v1}, Lcom/squareup/javapoet/CodeBlock;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/squareup/javapoet/FieldSpec;->initializer:Lcom/squareup/javapoet/CodeBlock;

    :goto_0
    invoke-static {v0, v3}, Lcom/squareup/javapoet/FieldSpec$Builder;->access$302(Lcom/squareup/javapoet/FieldSpec$Builder;Lcom/squareup/javapoet/CodeBlock;)Lcom/squareup/javapoet/CodeBlock;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    :try_start_0
    new-instance v1, Lcom/squareup/javapoet/CodeWriter;

    invoke-direct {v1, v0}, Lcom/squareup/javapoet/CodeWriter;-><init>(Ljava/lang/Appendable;)V

    .line 82
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/squareup/javapoet/FieldSpec;->emit(Lcom/squareup/javapoet/CodeWriter;Ljava/util/Set;)V

    .line 83
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 85
    :catch_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method
