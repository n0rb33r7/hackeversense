.class public final Lcom/squareup/javapoet/CodeBlock;
.super Ljava/lang/Object;
.source "CodeBlock.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/javapoet/CodeBlock$CodeBlockJoiner;,
        Lcom/squareup/javapoet/CodeBlock$Builder;
    }
.end annotation


# static fields
.field private static final LOWERCASE:Ljava/util/regex/Pattern;

.field private static final NAMED_ARGUMENT:Ljava/util/regex/Pattern;


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
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "\\$(?<argumentName>[\\w_]+):(?<typeChar>[\\w]).*"

    .line 67
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/squareup/javapoet/CodeBlock;->NAMED_ARGUMENT:Ljava/util/regex/Pattern;

    const-string v0, "[a-z]+[\\w_]*"

    .line 68
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/squareup/javapoet/CodeBlock;->LOWERCASE:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>(Lcom/squareup/javapoet/CodeBlock$Builder;)V
    .locals 1

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iget-object v0, p1, Lcom/squareup/javapoet/CodeBlock$Builder;->formatParts:Ljava/util/List;

    invoke-static {v0}, Lcom/squareup/javapoet/Util;->immutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/javapoet/CodeBlock;->formatParts:Ljava/util/List;

    .line 76
    iget-object p1, p1, Lcom/squareup/javapoet/CodeBlock$Builder;->args:Ljava/util/List;

    invoke-static {p1}, Lcom/squareup/javapoet/Util;->immutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/squareup/javapoet/CodeBlock;->args:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/squareup/javapoet/CodeBlock$Builder;Lcom/squareup/javapoet/CodeBlock$1;)V
    .locals 0

    .line 65
    invoke-direct {p0, p1}, Lcom/squareup/javapoet/CodeBlock;-><init>(Lcom/squareup/javapoet/CodeBlock$Builder;)V

    return-void
.end method

.method static synthetic access$100()Ljava/util/regex/Pattern;
    .locals 1

    .line 65
    sget-object v0, Lcom/squareup/javapoet/CodeBlock;->LOWERCASE:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method static synthetic access$200()Ljava/util/regex/Pattern;
    .locals 1

    .line 65
    sget-object v0, Lcom/squareup/javapoet/CodeBlock;->NAMED_ARGUMENT:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method public static builder()Lcom/squareup/javapoet/CodeBlock$Builder;
    .locals 2

    .line 149
    new-instance v0, Lcom/squareup/javapoet/CodeBlock$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/squareup/javapoet/CodeBlock$Builder;-><init>(Lcom/squareup/javapoet/CodeBlock$1;)V

    return-object v0
.end method

.method public static join(Ljava/lang/Iterable;Ljava/lang/String;)Lcom/squareup/javapoet/CodeBlock;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/squareup/javapoet/CodeBlock;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/squareup/javapoet/CodeBlock;"
        }
    .end annotation

    .line 114
    invoke-interface {p0}, Ljava/lang/Iterable;->spliterator()Ljava/util/Spliterator;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/util/stream/StreamSupport;->stream(Ljava/util/Spliterator;Z)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {p1}, Lcom/squareup/javapoet/CodeBlock;->joining(Ljava/lang/String;)Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/squareup/javapoet/CodeBlock;

    return-object p0
.end method

.method public static joining(Ljava/lang/String;)Ljava/util/stream/Collector;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/stream/Collector<",
            "Lcom/squareup/javapoet/CodeBlock;",
            "*",
            "Lcom/squareup/javapoet/CodeBlock;",
            ">;"
        }
    .end annotation

    .line 123
    new-instance v0, Lcom/squareup/javapoet/CodeBlock$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/squareup/javapoet/CodeBlock$$ExternalSyntheticLambda4;-><init>(Ljava/lang/String;)V

    sget-object p0, Lcom/squareup/javapoet/CodeBlock$$ExternalSyntheticLambda0;->INSTANCE:Lcom/squareup/javapoet/CodeBlock$$ExternalSyntheticLambda0;

    sget-object v1, Lcom/squareup/javapoet/CodeBlock$$ExternalSyntheticLambda1;->INSTANCE:Lcom/squareup/javapoet/CodeBlock$$ExternalSyntheticLambda1;

    sget-object v2, Lcom/squareup/javapoet/CodeBlock$$ExternalSyntheticLambda3;->INSTANCE:Lcom/squareup/javapoet/CodeBlock$$ExternalSyntheticLambda3;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/util/stream/Collector$Characteristics;

    invoke-static {v0, p0, v1, v2, v3}, Ljava/util/stream/Collector;->of(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;[Ljava/util/stream/Collector$Characteristics;)Ljava/util/stream/Collector;

    move-result-object p0

    return-object p0
.end method

.method public static joining(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/stream/Collector;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/stream/Collector<",
            "Lcom/squareup/javapoet/CodeBlock;",
            "*",
            "Lcom/squareup/javapoet/CodeBlock;",
            ">;"
        }
    .end annotation

    .line 137
    invoke-static {}, Lcom/squareup/javapoet/CodeBlock;->builder()Lcom/squareup/javapoet/CodeBlock$Builder;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "$N"

    invoke-virtual {v0, p1, v1}, Lcom/squareup/javapoet/CodeBlock$Builder;->add(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/CodeBlock$Builder;

    move-result-object p1

    .line 138
    new-instance v0, Lcom/squareup/javapoet/CodeBlock$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p1}, Lcom/squareup/javapoet/CodeBlock$$ExternalSyntheticLambda5;-><init>(Ljava/lang/String;Lcom/squareup/javapoet/CodeBlock$Builder;)V

    sget-object p0, Lcom/squareup/javapoet/CodeBlock$$ExternalSyntheticLambda0;->INSTANCE:Lcom/squareup/javapoet/CodeBlock$$ExternalSyntheticLambda0;

    sget-object v1, Lcom/squareup/javapoet/CodeBlock$$ExternalSyntheticLambda1;->INSTANCE:Lcom/squareup/javapoet/CodeBlock$$ExternalSyntheticLambda1;

    new-instance v3, Lcom/squareup/javapoet/CodeBlock$$ExternalSyntheticLambda2;

    invoke-direct {v3, p1, p2}, Lcom/squareup/javapoet/CodeBlock$$ExternalSyntheticLambda2;-><init>(Lcom/squareup/javapoet/CodeBlock$Builder;Ljava/lang/String;)V

    new-array p1, v2, [Ljava/util/stream/Collector$Characteristics;

    invoke-static {v0, p0, v1, v3, p1}, Ljava/util/stream/Collector;->of(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;[Ljava/util/stream/Collector$Characteristics;)Ljava/util/stream/Collector;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$joining$0(Ljava/lang/String;)Lcom/squareup/javapoet/CodeBlock$CodeBlockJoiner;
    .locals 2

    .line 124
    new-instance v0, Lcom/squareup/javapoet/CodeBlock$CodeBlockJoiner;

    invoke-static {}, Lcom/squareup/javapoet/CodeBlock;->builder()Lcom/squareup/javapoet/CodeBlock$Builder;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/squareup/javapoet/CodeBlock$CodeBlockJoiner;-><init>(Ljava/lang/String;Lcom/squareup/javapoet/CodeBlock$Builder;)V

    return-object v0
.end method

.method static synthetic lambda$joining$1(Ljava/lang/String;Lcom/squareup/javapoet/CodeBlock$Builder;)Lcom/squareup/javapoet/CodeBlock$CodeBlockJoiner;
    .locals 1

    .line 139
    new-instance v0, Lcom/squareup/javapoet/CodeBlock$CodeBlockJoiner;

    invoke-direct {v0, p0, p1}, Lcom/squareup/javapoet/CodeBlock$CodeBlockJoiner;-><init>(Ljava/lang/String;Lcom/squareup/javapoet/CodeBlock$Builder;)V

    return-object v0
.end method

.method static synthetic lambda$joining$2(Lcom/squareup/javapoet/CodeBlock$Builder;Ljava/lang/String;Lcom/squareup/javapoet/CodeBlock$CodeBlockJoiner;)Lcom/squareup/javapoet/CodeBlock;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "$N"

    .line 143
    invoke-static {p1, v0}, Lcom/squareup/javapoet/CodeBlock;->of(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/CodeBlock;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/squareup/javapoet/CodeBlock$Builder;->add(Lcom/squareup/javapoet/CodeBlock;)Lcom/squareup/javapoet/CodeBlock$Builder;

    .line 144
    invoke-virtual {p2}, Lcom/squareup/javapoet/CodeBlock$CodeBlockJoiner;->join()Lcom/squareup/javapoet/CodeBlock;

    move-result-object p0

    return-object p0
.end method

.method public static varargs of(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/CodeBlock;
    .locals 2

    .line 105
    new-instance v0, Lcom/squareup/javapoet/CodeBlock$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/squareup/javapoet/CodeBlock$Builder;-><init>(Lcom/squareup/javapoet/CodeBlock$1;)V

    invoke-virtual {v0, p0, p1}, Lcom/squareup/javapoet/CodeBlock$Builder;->add(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/CodeBlock$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/squareup/javapoet/CodeBlock$Builder;->build()Lcom/squareup/javapoet/CodeBlock;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    .line 86
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    return v0

    .line 87
    :cond_2
    invoke-virtual {p0}, Lcom/squareup/javapoet/CodeBlock;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 91
    invoke-virtual {p0}, Lcom/squareup/javapoet/CodeBlock;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/squareup/javapoet/CodeBlock;->formatParts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public toBuilder()Lcom/squareup/javapoet/CodeBlock$Builder;
    .locals 3

    .line 153
    new-instance v0, Lcom/squareup/javapoet/CodeBlock$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/squareup/javapoet/CodeBlock$Builder;-><init>(Lcom/squareup/javapoet/CodeBlock$1;)V

    .line 154
    iget-object v1, v0, Lcom/squareup/javapoet/CodeBlock$Builder;->formatParts:Ljava/util/List;

    iget-object v2, p0, Lcom/squareup/javapoet/CodeBlock;->formatParts:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 155
    iget-object v1, v0, Lcom/squareup/javapoet/CodeBlock$Builder;->args:Ljava/util/List;

    iget-object v2, p0, Lcom/squareup/javapoet/CodeBlock;->args:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    :try_start_0
    new-instance v1, Lcom/squareup/javapoet/CodeWriter;

    invoke-direct {v1, v0}, Lcom/squareup/javapoet/CodeWriter;-><init>(Ljava/lang/Appendable;)V

    invoke-virtual {v1, p0}, Lcom/squareup/javapoet/CodeWriter;->emit(Lcom/squareup/javapoet/CodeBlock;)Lcom/squareup/javapoet/CodeWriter;

    .line 98
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 100
    :catch_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method
