.class public final synthetic Lcom/squareup/javapoet/CodeBlock$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BinaryOperator;


# static fields
.field public static final synthetic INSTANCE:Lcom/squareup/javapoet/CodeBlock$$ExternalSyntheticLambda1;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/squareup/javapoet/CodeBlock$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/squareup/javapoet/CodeBlock$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Lcom/squareup/javapoet/CodeBlock$$ExternalSyntheticLambda1;->INSTANCE:Lcom/squareup/javapoet/CodeBlock$$ExternalSyntheticLambda1;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/squareup/javapoet/CodeBlock$CodeBlockJoiner;

    check-cast p2, Lcom/squareup/javapoet/CodeBlock$CodeBlockJoiner;

    invoke-virtual {p1, p2}, Lcom/squareup/javapoet/CodeBlock$CodeBlockJoiner;->merge(Lcom/squareup/javapoet/CodeBlock$CodeBlockJoiner;)Lcom/squareup/javapoet/CodeBlock$CodeBlockJoiner;

    move-result-object p1

    return-object p1
.end method
