.class Lcom/senseonics/gen12androidapp/MyTransmitterExpandableActivity$1;
.super Ljava/lang/Object;
.source "MyTransmitterExpandableActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/gen12androidapp/MyTransmitterExpandableActivity;->setDemoButtonEnable(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/gen12androidapp/MyTransmitterExpandableActivity;

.field final synthetic val$enable:Z


# direct methods
.method constructor <init>(Lcom/senseonics/gen12androidapp/MyTransmitterExpandableActivity;Z)V
    .locals 0

    .line 239
    iput-object p1, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandableActivity$1;->this$0:Lcom/senseonics/gen12androidapp/MyTransmitterExpandableActivity;

    iput-boolean p2, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandableActivity$1;->val$enable:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 242
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandableActivity$1;->this$0:Lcom/senseonics/gen12androidapp/MyTransmitterExpandableActivity;

    iget-object v0, v0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandableActivity;->vibration:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandableActivity$1;->this$0:Lcom/senseonics/gen12androidapp/MyTransmitterExpandableActivity;

    iget-boolean v2, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandableActivity$1;->val$enable:Z

    invoke-static {v1, v2}, Lcom/senseonics/util/StyleManager;->getButtonTextColorForState(Landroid/content/Context;Z)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 243
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandableActivity$1;->this$0:Lcom/senseonics/gen12androidapp/MyTransmitterExpandableActivity;

    iget-object v0, v0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandableActivity;->vibration:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandableActivity$1;->val$enable:Z

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method
