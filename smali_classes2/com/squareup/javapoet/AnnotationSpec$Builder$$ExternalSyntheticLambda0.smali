.class public final synthetic Lcom/squareup/javapoet/AnnotationSpec$Builder$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/squareup/javapoet/AnnotationSpec$Builder$$ExternalSyntheticLambda0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/squareup/javapoet/AnnotationSpec$Builder$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/squareup/javapoet/AnnotationSpec$Builder$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/squareup/javapoet/AnnotationSpec$Builder$$ExternalSyntheticLambda0;->INSTANCE:Lcom/squareup/javapoet/AnnotationSpec$Builder$$ExternalSyntheticLambda0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/squareup/javapoet/AnnotationSpec$Builder;->lambda$addMember$0(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
