.class public final Lcom/squareup/javapoet/AnnotationSpec$Builder;
.super Ljava/lang/Object;
.source "AnnotationSpec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/javapoet/AnnotationSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public final members:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/squareup/javapoet/CodeBlock;",
            ">;>;"
        }
    .end annotation
.end field

.field private final type:Lcom/squareup/javapoet/TypeName;


# direct methods
.method private constructor <init>(Lcom/squareup/javapoet/TypeName;)V
    .locals 1

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/squareup/javapoet/AnnotationSpec$Builder;->members:Ljava/util/Map;

    .line 199
    iput-object p1, p0, Lcom/squareup/javapoet/AnnotationSpec$Builder;->type:Lcom/squareup/javapoet/TypeName;

    return-void
.end method

.method synthetic constructor <init>(Lcom/squareup/javapoet/TypeName;Lcom/squareup/javapoet/AnnotationSpec$1;)V
    .locals 0

    .line 193
    invoke-direct {p0, p1}, Lcom/squareup/javapoet/AnnotationSpec$Builder;-><init>(Lcom/squareup/javapoet/TypeName;)V

    return-void
.end method

.method static synthetic access$000(Lcom/squareup/javapoet/AnnotationSpec$Builder;)Lcom/squareup/javapoet/TypeName;
    .locals 0

    .line 193
    iget-object p0, p0, Lcom/squareup/javapoet/AnnotationSpec$Builder;->type:Lcom/squareup/javapoet/TypeName;

    return-object p0
.end method

.method static synthetic lambda$addMember$0(Ljava/lang/String;)Ljava/util/List;
    .locals 0

    .line 207
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method


# virtual methods
.method public addMember(Ljava/lang/String;Lcom/squareup/javapoet/CodeBlock;)Lcom/squareup/javapoet/AnnotationSpec$Builder;
    .locals 2

    .line 207
    iget-object v0, p0, Lcom/squareup/javapoet/AnnotationSpec$Builder;->members:Ljava/util/Map;

    sget-object v1, Lcom/squareup/javapoet/AnnotationSpec$Builder$$ExternalSyntheticLambda0;->INSTANCE:Lcom/squareup/javapoet/AnnotationSpec$Builder$$ExternalSyntheticLambda0;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 208
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public varargs addMember(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/AnnotationSpec$Builder;
    .locals 0

    .line 203
    invoke-static {p2, p3}, Lcom/squareup/javapoet/CodeBlock;->of(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/CodeBlock;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/squareup/javapoet/AnnotationSpec$Builder;->addMember(Ljava/lang/String;Lcom/squareup/javapoet/CodeBlock;)Lcom/squareup/javapoet/AnnotationSpec$Builder;

    move-result-object p1

    return-object p1
.end method

.method addMemberForValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/squareup/javapoet/AnnotationSpec$Builder;
    .locals 5

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "memberName == null"

    .line 218
    invoke-static {p1, v2, v1}, Lcom/squareup/javapoet/Util;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    aput-object p1, v2, v0

    const-string v3, "value == null, constant non-null value expected for %s"

    .line 219
    invoke-static {p2, v3, v2}, Lcom/squareup/javapoet/Util;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    invoke-static {p1}, Ljavax/lang/model/SourceVersion;->isName(Ljava/lang/CharSequence;)Z

    move-result v2

    new-array v3, v1, [Ljava/lang/Object;

    aput-object p1, v3, v0

    const-string v4, "not a valid name: %s"

    invoke-static {v2, v4, v3}, Lcom/squareup/javapoet/Util;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 221
    instance-of v2, p2, Ljava/lang/Class;

    if-eqz v2, :cond_0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v0

    const-string p2, "$T.class"

    .line 222
    invoke-virtual {p0, p1, p2, v1}, Lcom/squareup/javapoet/AnnotationSpec$Builder;->addMember(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/AnnotationSpec$Builder;

    move-result-object p1

    return-object p1

    .line 224
    :cond_0
    instance-of v2, p2, Ljava/lang/Enum;

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 225
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v2, v0

    check-cast p2, Ljava/lang/Enum;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v2, v1

    const-string p2, "$T.$L"

    invoke-virtual {p0, p1, p2, v2}, Lcom/squareup/javapoet/AnnotationSpec$Builder;->addMember(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/AnnotationSpec$Builder;

    move-result-object p1

    return-object p1

    .line 227
    :cond_1
    instance-of v2, p2, Ljava/lang/String;

    if-eqz v2, :cond_2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v0

    const-string p2, "$S"

    .line 228
    invoke-virtual {p0, p1, p2, v1}, Lcom/squareup/javapoet/AnnotationSpec$Builder;->addMember(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/AnnotationSpec$Builder;

    move-result-object p1

    return-object p1

    .line 230
    :cond_2
    instance-of v2, p2, Ljava/lang/Float;

    if-eqz v2, :cond_3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v0

    const-string p2, "$Lf"

    .line 231
    invoke-virtual {p0, p1, p2, v1}, Lcom/squareup/javapoet/AnnotationSpec$Builder;->addMember(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/AnnotationSpec$Builder;

    move-result-object p1

    return-object p1

    .line 233
    :cond_3
    instance-of v2, p2, Ljava/lang/Character;

    if-eqz v2, :cond_4

    new-array v1, v1, [Ljava/lang/Object;

    .line 234
    check-cast p2, Ljava/lang/Character;

    invoke-virtual {p2}, Ljava/lang/Character;->charValue()C

    move-result p2

    invoke-static {p2}, Lcom/squareup/javapoet/Util;->characterLiteralWithoutSingleQuotes(C)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v1, v0

    const-string p2, "\'$L\'"

    invoke-virtual {p0, p1, p2, v1}, Lcom/squareup/javapoet/AnnotationSpec$Builder;->addMember(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/AnnotationSpec$Builder;

    move-result-object p1

    return-object p1

    :cond_4
    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v0

    const-string p2, "$L"

    .line 236
    invoke-virtual {p0, p1, p2, v1}, Lcom/squareup/javapoet/AnnotationSpec$Builder;->addMember(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/AnnotationSpec$Builder;

    move-result-object p1

    return-object p1
.end method

.method public build()Lcom/squareup/javapoet/AnnotationSpec;
    .locals 5

    .line 240
    iget-object v0, p0, Lcom/squareup/javapoet/AnnotationSpec$Builder;->members:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "name == null"

    .line 241
    invoke-static {v1, v4, v3}, Lcom/squareup/javapoet/Util;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    invoke-static {v1}, Ljavax/lang/model/SourceVersion;->isName(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v2

    const-string v1, "not a valid name: %s"

    invoke-static {v3, v1, v4}, Lcom/squareup/javapoet/Util;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 244
    :cond_0
    new-instance v0, Lcom/squareup/javapoet/AnnotationSpec;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/squareup/javapoet/AnnotationSpec;-><init>(Lcom/squareup/javapoet/AnnotationSpec$Builder;Lcom/squareup/javapoet/AnnotationSpec$1;)V

    return-object v0
.end method
