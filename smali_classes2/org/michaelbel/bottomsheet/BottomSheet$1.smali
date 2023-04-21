.class Lorg/michaelbel/bottomsheet/BottomSheet$1;
.super Landroid/widget/LinearLayout;
.source "BottomSheet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/michaelbel/bottomsheet/BottomSheet;->onCreate(Landroid/os/Bundle;)V
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

    .line 224
    iput-object p1, p0, Lorg/michaelbel/bottomsheet/BottomSheet$1;->this$0:Lorg/michaelbel/bottomsheet/BottomSheet;

    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public hasOverlappingRendering()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setTranslationY(F)V
    .locals 1

    .line 232
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    .line 233
    iget-object v0, p0, Lorg/michaelbel/bottomsheet/BottomSheet$1;->this$0:Lorg/michaelbel/bottomsheet/BottomSheet;

    invoke-virtual {v0, p1}, Lorg/michaelbel/bottomsheet/BottomSheet;->onContainerTranslationYChanged(F)V

    return-void
.end method
