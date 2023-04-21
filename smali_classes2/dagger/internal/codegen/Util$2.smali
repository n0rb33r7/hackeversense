.class final Ldagger/internal/codegen/Util$2;
.super Ljavax/lang/model/util/SimpleTypeVisitor6;
.source "Util.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldagger/internal/codegen/Util;->injectableType(Ljavax/lang/model/type/TypeMirror;)Lcom/squareup/javapoet/TypeName;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavax/lang/model/util/SimpleTypeVisitor6<",
        "Lcom/squareup/javapoet/TypeName;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 183
    invoke-direct {p0}, Ljavax/lang/model/util/SimpleTypeVisitor6;-><init>()V

    return-void
.end method


# virtual methods
.method protected defaultAction(Ljavax/lang/model/type/TypeMirror;Ljava/lang/Void;)Lcom/squareup/javapoet/TypeName;
    .locals 0

    .line 203
    invoke-static {p1}, Lcom/squareup/javapoet/TypeName;->get(Ljavax/lang/model/type/TypeMirror;)Lcom/squareup/javapoet/TypeName;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic defaultAction(Ljavax/lang/model/type/TypeMirror;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 183
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Ldagger/internal/codegen/Util$2;->defaultAction(Ljavax/lang/model/type/TypeMirror;Ljava/lang/Void;)Lcom/squareup/javapoet/TypeName;

    move-result-object p1

    return-object p1
.end method

.method public visitError(Ljavax/lang/model/type/ErrorType;Ljava/lang/Void;)Lcom/squareup/javapoet/TypeName;
    .locals 1

    .line 194
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "<any>"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 199
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/squareup/javapoet/ClassName;->bestGuess(Ljava/lang/String;)Lcom/squareup/javapoet/ClassName;

    move-result-object p1

    return-object p1

    .line 195
    :cond_0
    new-instance p1, Ldagger/internal/codegen/Util$CodeGenerationIncompleteException;

    const-string p2, "Type reported as <any> is likely a not-yet generated parameterized type."

    invoke-direct {p1, p2}, Ldagger/internal/codegen/Util$CodeGenerationIncompleteException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic visitError(Ljavax/lang/model/type/ErrorType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 183
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Ldagger/internal/codegen/Util$2;->visitError(Ljavax/lang/model/type/ErrorType;Ljava/lang/Void;)Lcom/squareup/javapoet/TypeName;

    move-result-object p1

    return-object p1
.end method

.method public visitPrimitive(Ljavax/lang/model/type/PrimitiveType;Ljava/lang/Void;)Lcom/squareup/javapoet/TypeName;
    .locals 0

    .line 185
    invoke-static {p1}, Ldagger/internal/codegen/Util;->box(Ljavax/lang/model/type/PrimitiveType;)Lcom/squareup/javapoet/TypeName;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitPrimitive(Ljavax/lang/model/type/PrimitiveType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 183
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Ldagger/internal/codegen/Util$2;->visitPrimitive(Ljavax/lang/model/type/PrimitiveType;Ljava/lang/Void;)Lcom/squareup/javapoet/TypeName;

    move-result-object p1

    return-object p1
.end method
