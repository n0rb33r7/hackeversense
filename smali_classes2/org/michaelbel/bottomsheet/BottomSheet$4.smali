.class Lorg/michaelbel/bottomsheet/BottomSheet$4;
.super Ljava/lang/Object;
.source "BottomSheet.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/michaelbel/bottomsheet/BottomSheet;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/michaelbel/bottomsheet/BottomSheet;


# direct methods
.method constructor <init>(Lorg/michaelbel/bottomsheet/BottomSheet;)V
    .locals 0

    .line 377
    iput-object p1, p0, Lorg/michaelbel/bottomsheet/BottomSheet$4;->this$0:Lorg/michaelbel/bottomsheet/BottomSheet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 380
    iget-object v0, p0, Lorg/michaelbel/bottomsheet/BottomSheet$4;->this$0:Lorg/michaelbel/bottomsheet/BottomSheet;

    invoke-static {v0}, Lorg/michaelbel/bottomsheet/BottomSheet;->access$200(Lorg/michaelbel/bottomsheet/BottomSheet;)Ljava/lang/Runnable;

    move-result-object v0

    if-eq v0, p0, :cond_0

    return-void

    .line 384
    :cond_0
    iget-object v0, p0, Lorg/michaelbel/bottomsheet/BottomSheet$4;->this$0:Lorg/michaelbel/bottomsheet/BottomSheet;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/michaelbel/bottomsheet/BottomSheet;->access$202(Lorg/michaelbel/bottomsheet/BottomSheet;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 385
    iget-object v0, p0, Lorg/michaelbel/bottomsheet/BottomSheet$4;->this$0:Lorg/michaelbel/bottomsheet/BottomSheet;

    invoke-static {v0}, Lorg/michaelbel/bottomsheet/BottomSheet;->access$300(Lorg/michaelbel/bottomsheet/BottomSheet;)V

    return-void
.end method
