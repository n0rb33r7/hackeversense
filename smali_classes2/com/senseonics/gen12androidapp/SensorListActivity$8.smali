.class Lcom/senseonics/gen12androidapp/SensorListActivity$8;
.super Ljava/lang/Object;
.source "SensorListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/gen12androidapp/SensorListActivity;->parseAndSendEEPROMAndATCCALString(Ljava/lang/String;Ljava/lang/String;)Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;
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

    .line 1127
    iput-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity$8;->this$0:Lcom/senseonics/gen12androidapp/SensorListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1131
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity$8;->this$0:Lcom/senseonics/gen12androidapp/SensorListActivity;

    invoke-static {v0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->-$$Nest$fgetprogressBar1(Lcom/senseonics/gen12androidapp/SensorListActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1132
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity$8;->this$0:Lcom/senseonics/gen12androidapp/SensorListActivity;

    invoke-static {v0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->-$$Nest$fgetimageView1(Lcom/senseonics/gen12androidapp/SensorListActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1133
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity$8;->this$0:Lcom/senseonics/gen12androidapp/SensorListActivity;

    invoke-static {v0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->-$$Nest$fgetprogressBar2(Lcom/senseonics/gen12androidapp/SensorListActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method
