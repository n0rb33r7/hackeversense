.class Lcom/senseonics/gen12androidapp/MainActivity$6;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/gen12androidapp/MainActivity;->onBackPressed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/gen12androidapp/MainActivity;


# direct methods
.method constructor <init>(Lcom/senseonics/gen12androidapp/MainActivity;)V
    .locals 0

    .line 592
    iput-object p1, p0, Lcom/senseonics/gen12androidapp/MainActivity$6;->this$0:Lcom/senseonics/gen12androidapp/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 596
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MainActivity$6;->this$0:Lcom/senseonics/gen12androidapp/MainActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/senseonics/gen12androidapp/MainActivity;->-$$Nest$fputdoubleBackToExitPressedOnce(Lcom/senseonics/gen12androidapp/MainActivity;Z)V

    return-void
.end method
