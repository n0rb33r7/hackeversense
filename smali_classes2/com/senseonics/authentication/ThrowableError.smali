.class public Lcom/senseonics/authentication/ThrowableError;
.super Ljava/lang/Object;
.source "ThrowableError.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/senseonics/authentication/ThrowableError$ThrowableErrorCode;
    }
.end annotation


# instance fields
.field private code:Lcom/senseonics/authentication/ThrowableError$ThrowableErrorCode;

.field private errorBody:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/senseonics/authentication/ThrowableError$ThrowableErrorCode;Ljava/lang/String;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/senseonics/authentication/ThrowableError;->code:Lcom/senseonics/authentication/ThrowableError$ThrowableErrorCode;

    .line 17
    iput-object p2, p0, Lcom/senseonics/authentication/ThrowableError;->errorBody:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCode()Lcom/senseonics/authentication/ThrowableError$ThrowableErrorCode;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/senseonics/authentication/ThrowableError;->code:Lcom/senseonics/authentication/ThrowableError$ThrowableErrorCode;

    return-object v0
.end method

.method public getErrorBody()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/senseonics/authentication/ThrowableError;->errorBody:Ljava/lang/String;

    return-object v0
.end method
