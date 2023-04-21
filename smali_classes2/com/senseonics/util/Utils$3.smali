.class Lcom/senseonics/util/Utils$3;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/util/Utils;->getThreeByteRecordNumberResponseComparator()Ljava/util/Comparator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/senseonics/bluetoothle/Response;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1708
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/senseonics/bluetoothle/Response;Lcom/senseonics/bluetoothle/Response;)I
    .locals 4

    .line 1711
    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/Response;->getData()[I

    move-result-object p1

    const/4 v0, 0x1

    .line 1712
    aget v1, p1, v0

    const/4 v2, 0x2

    aget v3, p1, v2

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v1, v3

    const/4 v3, 0x3

    aget p1, p1, v3

    shl-int/lit8 p1, p1, 0x10

    or-int/2addr p1, v1

    .line 1713
    invoke-virtual {p2}, Lcom/senseonics/bluetoothle/Response;->getData()[I

    move-result-object p2

    .line 1714
    aget v0, p2, v0

    aget v1, p2, v2

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    aget p2, p2, v3

    shl-int/lit8 p2, p2, 0x10

    or-int/2addr p2, v0

    sub-int/2addr p1, p2

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1708
    check-cast p1, Lcom/senseonics/bluetoothle/Response;

    check-cast p2, Lcom/senseonics/bluetoothle/Response;

    invoke-virtual {p0, p1, p2}, Lcom/senseonics/util/Utils$3;->compare(Lcom/senseonics/bluetoothle/Response;Lcom/senseonics/bluetoothle/Response;)I

    move-result p1

    return p1
.end method
