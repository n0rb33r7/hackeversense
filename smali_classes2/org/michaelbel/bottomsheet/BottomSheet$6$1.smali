.class Lorg/michaelbel/bottomsheet/BottomSheet$6$1;
.super Ljava/lang/Object;
.source "BottomSheet.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/michaelbel/bottomsheet/BottomSheet$6;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/michaelbel/bottomsheet/BottomSheet$6;


# direct methods
.method constructor <init>(Lorg/michaelbel/bottomsheet/BottomSheet$6;)V
    .locals 0

    .line 482
    iput-object p1, p0, Lorg/michaelbel/bottomsheet/BottomSheet$6$1;->this$1:Lorg/michaelbel/bottomsheet/BottomSheet$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 486
    :try_start_0
    iget-object v0, p0, Lorg/michaelbel/bottomsheet/BottomSheet$6$1;->this$1:Lorg/michaelbel/bottomsheet/BottomSheet$6;

    iget-object v0, v0, Lorg/michaelbel/bottomsheet/BottomSheet$6;->this$0:Lorg/michaelbel/bottomsheet/BottomSheet;

    invoke-static {v0}, Lorg/michaelbel/bottomsheet/BottomSheet;->access$800(Lorg/michaelbel/bottomsheet/BottomSheet;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 488
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
