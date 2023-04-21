.class Lcom/squareup/javapoet/ClassName$1;
.super Ljavax/lang/model/util/SimpleElementVisitor8;
.source "ClassName.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/squareup/javapoet/ClassName;->get(Ljavax/lang/model/element/TypeElement;)Lcom/squareup/javapoet/ClassName;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavax/lang/model/util/SimpleElementVisitor8<",
        "Lcom/squareup/javapoet/ClassName;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$element:Ljavax/lang/model/element/TypeElement;

.field final synthetic val$simpleName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljavax/lang/model/element/TypeElement;)V
    .locals 0

    .line 231
    iput-object p1, p0, Lcom/squareup/javapoet/ClassName$1;->val$simpleName:Ljava/lang/String;

    iput-object p2, p0, Lcom/squareup/javapoet/ClassName$1;->val$element:Ljavax/lang/model/element/TypeElement;

    invoke-direct {p0}, Ljavax/lang/model/util/SimpleElementVisitor8;-><init>()V

    return-void
.end method


# virtual methods
.method public defaultAction(Ljavax/lang/model/element/Element;Ljava/lang/Void;)Lcom/squareup/javapoet/ClassName;
    .locals 1

    .line 245
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected type nesting: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Lcom/squareup/javapoet/ClassName$1;->val$element:Ljavax/lang/model/element/TypeElement;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic defaultAction(Ljavax/lang/model/element/Element;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 231
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/squareup/javapoet/ClassName$1;->defaultAction(Ljavax/lang/model/element/Element;Ljava/lang/Void;)Lcom/squareup/javapoet/ClassName;

    move-result-object p1

    return-object p1
.end method

.method public visitPackage(Ljavax/lang/model/element/PackageElement;Ljava/lang/Void;)Lcom/squareup/javapoet/ClassName;
    .locals 2

    .line 233
    new-instance p2, Lcom/squareup/javapoet/ClassName;

    invoke-interface {p1}, Ljavax/lang/model/element/PackageElement;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/squareup/javapoet/ClassName$1;->val$simpleName:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p2, p1, v1, v0, v1}, Lcom/squareup/javapoet/ClassName;-><init>(Ljava/lang/String;Lcom/squareup/javapoet/ClassName;Ljava/lang/String;Lcom/squareup/javapoet/ClassName$1;)V

    return-object p2
.end method

.method public bridge synthetic visitPackage(Ljavax/lang/model/element/PackageElement;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 231
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/squareup/javapoet/ClassName$1;->visitPackage(Ljavax/lang/model/element/PackageElement;Ljava/lang/Void;)Lcom/squareup/javapoet/ClassName;

    move-result-object p1

    return-object p1
.end method

.method public visitType(Ljavax/lang/model/element/TypeElement;Ljava/lang/Void;)Lcom/squareup/javapoet/ClassName;
    .locals 0

    .line 237
    invoke-static {p1}, Lcom/squareup/javapoet/ClassName;->get(Ljavax/lang/model/element/TypeElement;)Lcom/squareup/javapoet/ClassName;

    move-result-object p1

    iget-object p2, p0, Lcom/squareup/javapoet/ClassName$1;->val$simpleName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/squareup/javapoet/ClassName;->nestedClass(Ljava/lang/String;)Lcom/squareup/javapoet/ClassName;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitType(Ljavax/lang/model/element/TypeElement;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 231
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/squareup/javapoet/ClassName$1;->visitType(Ljavax/lang/model/element/TypeElement;Ljava/lang/Void;)Lcom/squareup/javapoet/ClassName;

    move-result-object p1

    return-object p1
.end method

.method public visitUnknown(Ljavax/lang/model/element/Element;Ljava/lang/Void;)Lcom/squareup/javapoet/ClassName;
    .locals 1

    .line 241
    iget-object p1, p0, Lcom/squareup/javapoet/ClassName$1;->val$simpleName:Ljava/lang/String;

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/String;

    const-string v0, ""

    invoke-static {v0, p1, p2}, Lcom/squareup/javapoet/ClassName;->get(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/squareup/javapoet/ClassName;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitUnknown(Ljavax/lang/model/element/Element;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 231
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/squareup/javapoet/ClassName$1;->visitUnknown(Ljavax/lang/model/element/Element;Ljava/lang/Void;)Lcom/squareup/javapoet/ClassName;

    move-result-object p1

    return-object p1
.end method
