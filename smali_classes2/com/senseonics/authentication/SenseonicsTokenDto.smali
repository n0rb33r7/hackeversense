.class public Lcom/senseonics/authentication/SenseonicsTokenDto;
.super Ljava/lang/Object;
.source "SenseonicsTokenDto.java"


# instance fields
.field private accessToken:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "access_token"
    .end annotation
.end field

.field private clientId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "as:client_id"
    .end annotation
.end field

.field private expired:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = ".expires"
    .end annotation
.end field

.field private expiresIn:Ljava/lang/Long;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "expires_in"
    .end annotation
.end field

.field private issued:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = ".issued"
    .end annotation
.end field

.field private refreshToken:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "refresh_token"
    .end annotation
.end field

.field private tokenType:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "token_type"
    .end annotation
.end field

.field private userName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "userName"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/senseonics/authentication/SenseonicsTokenDto;->accessToken:Ljava/lang/String;

    .line 26
    iput-object p2, p0, Lcom/senseonics/authentication/SenseonicsTokenDto;->tokenType:Ljava/lang/String;

    .line 27
    iput-object p3, p0, Lcom/senseonics/authentication/SenseonicsTokenDto;->expiresIn:Ljava/lang/Long;

    .line 28
    iput-object p4, p0, Lcom/senseonics/authentication/SenseonicsTokenDto;->refreshToken:Ljava/lang/String;

    .line 29
    iput-object p5, p0, Lcom/senseonics/authentication/SenseonicsTokenDto;->clientId:Ljava/lang/String;

    .line 30
    iput-object p6, p0, Lcom/senseonics/authentication/SenseonicsTokenDto;->userName:Ljava/lang/String;

    .line 31
    iput-object p7, p0, Lcom/senseonics/authentication/SenseonicsTokenDto;->issued:Ljava/lang/String;

    .line 32
    iput-object p8, p0, Lcom/senseonics/authentication/SenseonicsTokenDto;->expired:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAccessToken()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/senseonics/authentication/SenseonicsTokenDto;->accessToken:Ljava/lang/String;

    return-object v0
.end method

.method public getRefreshToken()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/senseonics/authentication/SenseonicsTokenDto;->refreshToken:Ljava/lang/String;

    return-object v0
.end method
