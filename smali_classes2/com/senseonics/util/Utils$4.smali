.class Lcom/senseonics/util/Utils$4;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/util/Utils;->getTwoByteRecordNumberResponseComparator()Ljava/util/Comparator;
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

    .line 1721
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/senseonics/bluetoothle/Response;Lcom/senseonics/bluetoothle/Response;)I
    .locals 3

    .line 1724
    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/Response;->getData()[I

    move-result-object p1

    const/4 v0, 0x1

    .line 1725
    aget v1, p1, v0

    const/4 v2, 0x2

    aget p1, p1, v2

    shl-int/lit8 p1, p1, 0x8

    or-int/2addr p1, v1

    .line 1726
    invoke-virtual {p2}, Lcom/senseonics/bluetoothle/Response;->getData()[I

    move-result-object p2

    .line 1727
    aget v0, p2, v0

    aget p2, p2, v2

    shl-int/lit8 p2, p2, 0x8

    or-int/2addr p2, v0

    sub-int/2addr p1, p2

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1721
    check-cast p1, Lcom/senseonics/bluetoothle/Response;

    check-cast p2, Lcom/senseonics/bluetoothle/Response;

    invoke-virtual {p0, p1, p2}, Lcom/senseonics/util/Utils$4;->compare(Lcom/senseonics/bluetoothle/Response;Lcom/senseonics/bluetoothle/Response;)I

    move-result p1

    return p1
.end method
