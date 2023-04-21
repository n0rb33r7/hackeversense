.class public Lcom/senseonics/bluetoothle/Response;
.super Ljava/lang/Object;
.source "Response.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/senseonics/bluetoothle/Response;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private data:[I

.field private responseAccepted:Z

.field private responseId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 79
    new-instance v0, Lcom/senseonics/bluetoothle/Response$1;

    invoke-direct {v0}, Lcom/senseonics/bluetoothle/Response$1;-><init>()V

    sput-object v0, Lcom/senseonics/bluetoothle/Response;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IZ[I)V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lcom/senseonics/bluetoothle/Response;->responseId:I

    .line 20
    invoke-virtual {p0, p1}, Lcom/senseonics/bluetoothle/Response;->setResponseId(I)V

    .line 21
    invoke-virtual {p0, p2}, Lcom/senseonics/bluetoothle/Response;->setResponseAccepted(Z)V

    .line 22
    invoke-virtual {p0, p3}, Lcom/senseonics/bluetoothle/Response;->setData([I)V

    return-void
.end method

.method public constructor <init>(Z[I)V
    .locals 1

    const/4 v0, -0x1

    .line 15
    invoke-direct {p0, v0, p1, p2}, Lcom/senseonics/bluetoothle/Response;-><init>(IZ[I)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 52
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 53
    :cond_1
    check-cast p1, Lcom/senseonics/bluetoothle/Response;

    .line 54
    iget v2, p0, Lcom/senseonics/bluetoothle/Response;->responseId:I

    iget v3, p1, Lcom/senseonics/bluetoothle/Response;->responseId:I

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/senseonics/bluetoothle/Response;->responseAccepted:Z

    iget-boolean v3, p1, Lcom/senseonics/bluetoothle/Response;->responseAccepted:Z

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/senseonics/bluetoothle/Response;->data:[I

    iget-object p1, p1, Lcom/senseonics/bluetoothle/Response;->data:[I

    .line 56
    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getData()[I
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/senseonics/bluetoothle/Response;->data:[I

    return-object v0
.end method

.method public getResponseId()I
    .locals 1

    .line 26
    iget v0, p0, Lcom/senseonics/bluetoothle/Response;->responseId:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 61
    iget v1, p0, Lcom/senseonics/bluetoothle/Response;->responseId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/senseonics/bluetoothle/Response;->responseAccepted:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 62
    iget-object v1, p0, Lcom/senseonics/bluetoothle/Response;->data:[I

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public isResponseAccepted()Z
    .locals 1

    .line 42
    iget-boolean v0, p0, Lcom/senseonics/bluetoothle/Response;->responseAccepted:Z

    return v0
.end method

.method public setData([I)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [I

    .line 38
    :cond_0
    iput-object p1, p0, Lcom/senseonics/bluetoothle/Response;->data:[I

    return-void
.end method

.method public setResponseAccepted(Z)V
    .locals 0

    .line 46
    iput-boolean p1, p0, Lcom/senseonics/bluetoothle/Response;->responseAccepted:Z

    return-void
.end method

.method public setResponseId(I)V
    .locals 0

    .line 30
    iput p1, p0, Lcom/senseonics/bluetoothle/Response;->responseId:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 73
    iget p2, p0, Lcom/senseonics/bluetoothle/Response;->responseId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 74
    iget-boolean p2, p0, Lcom/senseonics/bluetoothle/Response;->responseAccepted:Z

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 75
    iget-object p2, p0, Lcom/senseonics/bluetoothle/Response;->data:[I

    array-length p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 76
    iget-object p2, p0, Lcom/senseonics/bluetoothle/Response;->data:[I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    return-void
.end method
