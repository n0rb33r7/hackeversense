.class Lcom/senseonics/gen12androidapp/SensorListActivity$10;
.super Ljava/lang/Object;
.source "SensorListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/gen12androidapp/SensorListActivity;->showRelinkAlert2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/gen12androidapp/SensorListActivity;


# direct methods
.method constructor <init>(Lcom/senseonics/gen12androidapp/SensorListActivity;)V
    .locals 0

    .line 1463
    iput-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity$10;->this$0:Lcom/senseonics/gen12androidapp/SensorListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1467
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity$10;->this$0:Lcom/senseonics/gen12androidapp/SensorListActivity;

    invoke-static {p1}, Lcom/senseonics/gen12androidapp/SensorListActivity;->-$$Nest$fgetdialog(Lcom/senseonics/gen12androidapp/SensorListActivity;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 1469
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity$10;->this$0:Lcom/senseonics/gen12androidapp/SensorListActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->-$$Nest$fputisRelink(Lcom/senseonics/gen12androidapp/SensorListActivity;Z)V

    .line 1470
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity$10;->this$0:Lcom/senseonics/gen12androidapp/SensorListActivity;

    invoke-static {p1}, Lcom/senseonics/gen12androidapp/SensorListActivity;->-$$Nest$mstartLinking(Lcom/senseonics/gen12androidapp/SensorListActivity;)V

    return-void
.end method
