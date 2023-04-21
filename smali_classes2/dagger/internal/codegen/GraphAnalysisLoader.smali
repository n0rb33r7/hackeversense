.class public final Ldagger/internal/codegen/GraphAnalysisLoader;
.super Ldagger/internal/Loader;
.source "GraphAnalysisLoader.java"


# instance fields
.field private final processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;


# direct methods
.method public constructor <init>(Ljavax/annotation/processing/ProcessingEnvironment;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ldagger/internal/Loader;-><init>()V

    .line 39
    iput-object p1, p0, Ldagger/internal/codegen/GraphAnalysisLoader;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    return-void
.end method

.method private static getTypeElement(Ljavax/lang/model/util/Elements;Ljava/lang/CharSequence;)Ljavax/lang/model/element/TypeElement;
    .locals 0

    .line 127
    :try_start_0
    invoke-interface {p0, p1}, Ljavax/lang/model/util/Elements;->getTypeElement(Ljava/lang/CharSequence;)Ljavax/lang/model/element/TypeElement;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static nextDollar(Ljava/lang/String;Ljava/lang/CharSequence;I)I
    .locals 2

    :goto_0
    const/16 v0, 0x24

    .line 110
    invoke-virtual {p0, v0, p2}, Ljava/lang/String;->indexOf(II)I

    move-result p2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    return v0

    :cond_0
    if-eqz p2, :cond_2

    .line 116
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-eq p2, v0, :cond_2

    add-int/lit8 v0, p2, -0x1

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v1, 0x2e

    if-eq v0, v1, :cond_2

    add-int/lit8 v0, p2, 0x1

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    return p2

    :cond_2
    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0
.end method

.method static resolveType(Ljavax/lang/model/util/Elements;Ljava/lang/String;)Ljavax/lang/model/element/TypeElement;
    .locals 2

    const/4 v0, 0x0

    .line 65
    invoke-static {p1, p1, v0}, Ldagger/internal/codegen/GraphAnalysisLoader;->nextDollar(Ljava/lang/String;Ljava/lang/CharSequence;I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 67
    invoke-static {p0, p1}, Ldagger/internal/codegen/GraphAnalysisLoader;->getTypeElement(Ljavax/lang/model/util/Elements;Ljava/lang/CharSequence;)Ljavax/lang/model/element/TypeElement;

    move-result-object p0

    return-object p0

    .line 71
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    invoke-static {p0, p1, v1, v0}, Ldagger/internal/codegen/GraphAnalysisLoader;->resolveType(Ljavax/lang/model/util/Elements;Ljava/lang/String;Ljava/lang/StringBuilder;I)Ljavax/lang/model/element/TypeElement;

    move-result-object p0

    return-object p0
.end method

.method private static resolveType(Ljavax/lang/model/util/Elements;Ljava/lang/String;Ljava/lang/StringBuilder;I)Ljavax/lang/model/element/TypeElement;
    .locals 3

    const/16 v0, 0x2e

    .line 87
    invoke-virtual {p2, p3, v0}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    add-int/lit8 v0, p3, 0x1

    .line 88
    invoke-static {p1, p2, v0}, Ldagger/internal/codegen/GraphAnalysisLoader;->nextDollar(Ljava/lang/String;Ljava/lang/CharSequence;I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 89
    invoke-static {p0, p2}, Ldagger/internal/codegen/GraphAnalysisLoader;->getTypeElement(Ljavax/lang/model/util/Elements;Ljava/lang/CharSequence;)Ljavax/lang/model/element/TypeElement;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-static {p0, p1, p2, v1}, Ldagger/internal/codegen/GraphAnalysisLoader;->resolveType(Ljavax/lang/model/util/Elements;Ljava/lang/String;Ljava/lang/StringBuilder;I)Ljavax/lang/model/element/TypeElement;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_1

    return-object v1

    :cond_1
    const/16 v1, 0x24

    .line 97
    invoke-virtual {p2, p3, v1}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 98
    invoke-static {p1, p2, v0}, Ldagger/internal/codegen/GraphAnalysisLoader;->nextDollar(Ljava/lang/String;Ljava/lang/CharSequence;I)I

    move-result p3

    if-ne p3, v2, :cond_2

    .line 99
    invoke-static {p0, p2}, Ldagger/internal/codegen/GraphAnalysisLoader;->getTypeElement(Ljavax/lang/model/util/Elements;Ljava/lang/CharSequence;)Ljavax/lang/model/element/TypeElement;

    move-result-object p0

    goto :goto_1

    :cond_2
    invoke-static {p0, p1, p2, p3}, Ldagger/internal/codegen/GraphAnalysisLoader;->resolveType(Ljavax/lang/model/util/Elements;Ljava/lang/String;Ljava/lang/StringBuilder;I)Ljavax/lang/model/element/TypeElement;

    move-result-object p0

    :goto_1
    return-object p0
.end method


# virtual methods
.method public getAtInjectBinding(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ldagger/internal/Binding;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            "Z)",
            "Ldagger/internal/Binding<",
            "*>;"
        }
    .end annotation

    .line 44
    iget-object p1, p0, Ldagger/internal/codegen/GraphAnalysisLoader;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    invoke-interface {p1}, Ljavax/annotation/processing/ProcessingEnvironment;->getElementUtils()Ljavax/lang/model/util/Elements;

    move-result-object p1

    invoke-static {p1, p2}, Ldagger/internal/codegen/GraphAnalysisLoader;->resolveType(Ljavax/lang/model/util/Elements;Ljava/lang/String;)Ljavax/lang/model/element/TypeElement;

    move-result-object p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return-object p2

    .line 52
    :cond_0
    invoke-interface {p1}, Ljavax/lang/model/element/TypeElement;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object p3

    sget-object v0, Ljavax/lang/model/element/ElementKind;->INTERFACE:Ljavax/lang/model/element/ElementKind;

    if-ne p3, v0, :cond_1

    return-object p2

    .line 55
    :cond_1
    invoke-static {p1, p4}, Ldagger/internal/codegen/GraphAnalysisInjectBinding;->create(Ljavax/lang/model/element/TypeElement;Z)Ldagger/internal/codegen/GraphAnalysisInjectBinding;

    move-result-object p1

    return-object p1
.end method

.method public getModuleAdapter(Ljava/lang/Class;)Ldagger/internal/ModuleAdapter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ldagger/internal/ModuleAdapter<",
            "TT;>;"
        }
    .end annotation

    .line 138
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public getStaticInjection(Ljava/lang/Class;)Ldagger/internal/StaticInjection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ldagger/internal/StaticInjection;"
        }
    .end annotation

    .line 142
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
