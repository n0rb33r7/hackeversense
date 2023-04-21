.class public final Lcom/squareup/javapoet/WildcardTypeName;
.super Lcom/squareup/javapoet/TypeName;
.source "WildcardTypeName.java"


# instance fields
.field public final lowerBounds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/squareup/javapoet/TypeName;",
            ">;"
        }
    .end annotation
.end field

.field public final upperBounds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/squareup/javapoet/TypeName;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/squareup/javapoet/TypeName;",
            ">;",
            "Ljava/util/List<",
            "Lcom/squareup/javapoet/TypeName;",
            ">;)V"
        }
    .end annotation

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/squareup/javapoet/WildcardTypeName;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method private constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/squareup/javapoet/TypeName;",
            ">;",
            "Ljava/util/List<",
            "Lcom/squareup/javapoet/TypeName;",
            ">;",
            "Ljava/util/List<",
            "Lcom/squareup/javapoet/AnnotationSpec;",
            ">;)V"
        }
    .end annotation

    .line 41
    invoke-direct {p0, p3}, Lcom/squareup/javapoet/TypeName;-><init>(Ljava/util/List;)V

    .line 42
    invoke-static {p1}, Lcom/squareup/javapoet/Util;->immutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p3

    iput-object p3, p0, Lcom/squareup/javapoet/WildcardTypeName;->upperBounds:Ljava/util/List;

    .line 43
    invoke-static {p2}, Lcom/squareup/javapoet/Util;->immutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/squareup/javapoet/WildcardTypeName;->lowerBounds:Ljava/util/List;

    .line 45
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    move p2, v1

    goto :goto_0

    :cond_0
    move p2, v0

    :goto_0
    new-array v2, v1, [Ljava/lang/Object;

    aput-object p1, v2, v0

    const-string p1, "unexpected extends bounds: %s"

    invoke-static {p2, p1, v2}, Lcom/squareup/javapoet/Util;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 46
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/squareup/javapoet/TypeName;

    .line 47
    invoke-virtual {p2}, Lcom/squareup/javapoet/TypeName;->isPrimitive()Z

    move-result p3

    if-nez p3, :cond_1

    sget-object p3, Lcom/squareup/javapoet/WildcardTypeName;->VOID:Lcom/squareup/javapoet/TypeName;

    if-eq p2, p3, :cond_1

    move p3, v1

    goto :goto_2

    :cond_1
    move p3, v0

    :goto_2
    new-array v2, v1, [Ljava/lang/Object;

    aput-object p2, v2, v0

    const-string p2, "invalid upper bound: %s"

    invoke-static {p3, p2, v2}, Lcom/squareup/javapoet/Util;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 50
    :cond_2
    iget-object p1, p0, Lcom/squareup/javapoet/WildcardTypeName;->lowerBounds:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/squareup/javapoet/TypeName;

    .line 51
    invoke-virtual {p2}, Lcom/squareup/javapoet/TypeName;->isPrimitive()Z

    move-result p3

    if-nez p3, :cond_3

    sget-object p3, Lcom/squareup/javapoet/WildcardTypeName;->VOID:Lcom/squareup/javapoet/TypeName;

    if-eq p2, p3, :cond_3

    move p3, v1

    goto :goto_4

    :cond_3
    move p3, v0

    :goto_4
    new-array v2, v1, [Ljava/lang/Object;

    aput-object p2, v2, v0

    const-string p2, "invalid lower bound: %s"

    invoke-static {p3, p2, v2}, Lcom/squareup/javapoet/Util;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    :cond_4
    return-void
.end method

.method public static get(Ljava/lang/reflect/WildcardType;)Lcom/squareup/javapoet/TypeName;
    .locals 1

    .line 121
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-static {p0, v0}, Lcom/squareup/javapoet/WildcardTypeName;->get(Ljava/lang/reflect/WildcardType;Ljava/util/Map;)Lcom/squareup/javapoet/TypeName;

    move-result-object p0

    return-object p0
.end method

.method static get(Ljava/lang/reflect/WildcardType;Ljava/util/Map;)Lcom/squareup/javapoet/TypeName;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/WildcardType;",
            "Ljava/util/Map<",
            "Ljava/lang/reflect/Type;",
            "Lcom/squareup/javapoet/TypeVariableName;",
            ">;)",
            "Lcom/squareup/javapoet/TypeName;"
        }
    .end annotation

    .line 125
    new-instance v0, Lcom/squareup/javapoet/WildcardTypeName;

    .line 126
    invoke-interface {p0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/squareup/javapoet/WildcardTypeName;->list([Ljava/lang/reflect/Type;Ljava/util/Map;)Ljava/util/List;

    move-result-object v1

    .line 127
    invoke-interface {p0}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/squareup/javapoet/WildcardTypeName;->list([Ljava/lang/reflect/Type;Ljava/util/Map;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/squareup/javapoet/WildcardTypeName;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method

.method public static get(Ljavax/lang/model/type/WildcardType;)Lcom/squareup/javapoet/TypeName;
    .locals 1

    .line 101
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-static {p0, v0}, Lcom/squareup/javapoet/WildcardTypeName;->get(Ljavax/lang/model/type/WildcardType;Ljava/util/Map;)Lcom/squareup/javapoet/TypeName;

    move-result-object p0

    return-object p0
.end method

.method static get(Ljavax/lang/model/type/WildcardType;Ljava/util/Map;)Lcom/squareup/javapoet/TypeName;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/type/WildcardType;",
            "Ljava/util/Map<",
            "Ljavax/lang/model/element/TypeParameterElement;",
            "Lcom/squareup/javapoet/TypeVariableName;",
            ">;)",
            "Lcom/squareup/javapoet/TypeName;"
        }
    .end annotation

    .line 107
    invoke-interface {p0}, Ljavax/lang/model/type/WildcardType;->getExtendsBound()Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    if-nez v0, :cond_1

    .line 109
    invoke-interface {p0}, Ljavax/lang/model/type/WildcardType;->getSuperBound()Ljavax/lang/model/type/TypeMirror;

    move-result-object p0

    if-nez p0, :cond_0

    .line 111
    const-class p0, Ljava/lang/Object;

    invoke-static {p0}, Lcom/squareup/javapoet/WildcardTypeName;->subtypeOf(Ljava/lang/reflect/Type;)Lcom/squareup/javapoet/WildcardTypeName;

    move-result-object p0

    return-object p0

    .line 113
    :cond_0
    invoke-static {p0, p1}, Lcom/squareup/javapoet/TypeName;->get(Ljavax/lang/model/type/TypeMirror;Ljava/util/Map;)Lcom/squareup/javapoet/TypeName;

    move-result-object p0

    invoke-static {p0}, Lcom/squareup/javapoet/WildcardTypeName;->supertypeOf(Lcom/squareup/javapoet/TypeName;)Lcom/squareup/javapoet/WildcardTypeName;

    move-result-object p0

    return-object p0

    .line 116
    :cond_1
    invoke-static {v0, p1}, Lcom/squareup/javapoet/TypeName;->get(Ljavax/lang/model/type/TypeMirror;Ljava/util/Map;)Lcom/squareup/javapoet/TypeName;

    move-result-object p0

    invoke-static {p0}, Lcom/squareup/javapoet/WildcardTypeName;->subtypeOf(Lcom/squareup/javapoet/TypeName;)Lcom/squareup/javapoet/WildcardTypeName;

    move-result-object p0

    return-object p0
.end method

.method public static subtypeOf(Lcom/squareup/javapoet/TypeName;)Lcom/squareup/javapoet/WildcardTypeName;
    .locals 2

    .line 80
    new-instance v0, Lcom/squareup/javapoet/WildcardTypeName;

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/squareup/javapoet/WildcardTypeName;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method

.method public static subtypeOf(Ljava/lang/reflect/Type;)Lcom/squareup/javapoet/WildcardTypeName;
    .locals 0

    .line 84
    invoke-static {p0}, Lcom/squareup/javapoet/TypeName;->get(Ljava/lang/reflect/Type;)Lcom/squareup/javapoet/TypeName;

    move-result-object p0

    invoke-static {p0}, Lcom/squareup/javapoet/WildcardTypeName;->subtypeOf(Lcom/squareup/javapoet/TypeName;)Lcom/squareup/javapoet/WildcardTypeName;

    move-result-object p0

    return-object p0
.end method

.method public static supertypeOf(Lcom/squareup/javapoet/TypeName;)Lcom/squareup/javapoet/WildcardTypeName;
    .locals 2

    .line 92
    new-instance v0, Lcom/squareup/javapoet/WildcardTypeName;

    sget-object v1, Lcom/squareup/javapoet/WildcardTypeName;->OBJECT:Lcom/squareup/javapoet/ClassName;

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 93
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/squareup/javapoet/WildcardTypeName;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method

.method public static supertypeOf(Ljava/lang/reflect/Type;)Lcom/squareup/javapoet/WildcardTypeName;
    .locals 0

    .line 97
    invoke-static {p0}, Lcom/squareup/javapoet/TypeName;->get(Ljava/lang/reflect/Type;)Lcom/squareup/javapoet/TypeName;

    move-result-object p0

    invoke-static {p0}, Lcom/squareup/javapoet/WildcardTypeName;->supertypeOf(Lcom/squareup/javapoet/TypeName;)Lcom/squareup/javapoet/WildcardTypeName;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic annotated(Ljava/util/List;)Lcom/squareup/javapoet/TypeName;
    .locals 0

    .line 31
    invoke-virtual {p0, p1}, Lcom/squareup/javapoet/WildcardTypeName;->annotated(Ljava/util/List;)Lcom/squareup/javapoet/WildcardTypeName;

    move-result-object p1

    return-object p1
.end method

.method public annotated(Ljava/util/List;)Lcom/squareup/javapoet/WildcardTypeName;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/squareup/javapoet/AnnotationSpec;",
            ">;)",
            "Lcom/squareup/javapoet/WildcardTypeName;"
        }
    .end annotation

    .line 57
    new-instance v0, Lcom/squareup/javapoet/WildcardTypeName;

    iget-object v1, p0, Lcom/squareup/javapoet/WildcardTypeName;->upperBounds:Ljava/util/List;

    iget-object v2, p0, Lcom/squareup/javapoet/WildcardTypeName;->lowerBounds:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/squareup/javapoet/WildcardTypeName;->concatAnnotations(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lcom/squareup/javapoet/WildcardTypeName;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method

.method emit(Lcom/squareup/javapoet/CodeWriter;)Lcom/squareup/javapoet/CodeWriter;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lcom/squareup/javapoet/WildcardTypeName;->lowerBounds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    new-array v0, v1, [Ljava/lang/Object;

    .line 66
    iget-object v1, p0, Lcom/squareup/javapoet/WildcardTypeName;->lowerBounds:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "? super $T"

    invoke-virtual {p1, v1, v0}, Lcom/squareup/javapoet/CodeWriter;->emit(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/CodeWriter;

    move-result-object p1

    return-object p1

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/squareup/javapoet/WildcardTypeName;->upperBounds:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/javapoet/TypeName;

    sget-object v3, Lcom/squareup/javapoet/TypeName;->OBJECT:Lcom/squareup/javapoet/ClassName;

    invoke-virtual {v0, v3}, Lcom/squareup/javapoet/TypeName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "?"

    .line 69
    invoke-virtual {p1, v0}, Lcom/squareup/javapoet/CodeWriter;->emit(Ljava/lang/String;)Lcom/squareup/javapoet/CodeWriter;

    move-result-object p1

    goto :goto_0

    :cond_1
    new-array v0, v1, [Ljava/lang/Object;

    .line 70
    iget-object v1, p0, Lcom/squareup/javapoet/WildcardTypeName;->upperBounds:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "? extends $T"

    invoke-virtual {p1, v1, v0}, Lcom/squareup/javapoet/CodeWriter;->emit(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/CodeWriter;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public withoutAnnotations()Lcom/squareup/javapoet/TypeName;
    .locals 3

    .line 61
    new-instance v0, Lcom/squareup/javapoet/WildcardTypeName;

    iget-object v1, p0, Lcom/squareup/javapoet/WildcardTypeName;->upperBounds:Ljava/util/List;

    iget-object v2, p0, Lcom/squareup/javapoet/WildcardTypeName;->lowerBounds:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/squareup/javapoet/WildcardTypeName;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method
