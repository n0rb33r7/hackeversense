.class public Lorg/michaelbel/bottomsheet/BottomSheetItem;
.super Ljava/lang/Object;
.source "BottomSheetItem.java"


# instance fields
.field public icon:Landroid/graphics/drawable/Drawable;

.field public text:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lorg/michaelbel/bottomsheet/BottomSheetItem;->text:Ljava/lang/CharSequence;

    .line 38
    iput-object p2, p0, Lorg/michaelbel/bottomsheet/BottomSheetItem;->icon:Landroid/graphics/drawable/Drawable;

    return-void
.end method
