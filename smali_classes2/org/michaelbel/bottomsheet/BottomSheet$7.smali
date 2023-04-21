.class Lorg/michaelbel/bottomsheet/BottomSheet$7;
.super Lorg/michaelbel/bottomsheet/BottomSheet$ContainerView;
.source "BottomSheet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/michaelbel/bottomsheet/BottomSheet;-><init>(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/michaelbel/bottomsheet/BottomSheet;


# direct methods
.method constructor <init>(Lorg/michaelbel/bottomsheet/BottomSheet;Landroid/content/Context;)V
    .locals 0

    .line 541
    iput-object p1, p0, Lorg/michaelbel/bottomsheet/BottomSheet$7;->this$0:Lorg/michaelbel/bottomsheet/BottomSheet;

    invoke-direct {p0, p1, p2}, Lorg/michaelbel/bottomsheet/BottomSheet$ContainerView;-><init>(Lorg/michaelbel/bottomsheet/BottomSheet;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 2

    const/4 v0, 0x1

    .line 545
    :try_start_0
    iget-object v1, p0, Lorg/michaelbel/bottomsheet/BottomSheet$7;->this$0:Lorg/michaelbel/bottomsheet/BottomSheet;

    invoke-static {v1}, Lorg/michaelbel/bottomsheet/BottomSheet;->access$1100(Lorg/michaelbel/bottomsheet/BottomSheet;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Lorg/michaelbel/bottomsheet/BottomSheet$ContainerView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :catch_0
    move-exception p1

    .line 547
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method
