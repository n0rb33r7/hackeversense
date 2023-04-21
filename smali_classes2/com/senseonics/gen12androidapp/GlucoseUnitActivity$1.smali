.class Lcom/senseonics/gen12androidapp/GlucoseUnitActivity$1;
.super Ljava/lang/Object;
.source "GlucoseUnitActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/gen12androidapp/GlucoseUnitActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/gen12androidapp/GlucoseUnitActivity;


# direct methods
.method constructor <init>(Lcom/senseonics/gen12androidapp/GlucoseUnitActivity;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/senseonics/gen12androidapp/GlucoseUnitActivity$1;->this$0:Lcom/senseonics/gen12androidapp/GlucoseUnitActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 41
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/GlucoseUnitActivity$1;->this$0:Lcom/senseonics/gen12androidapp/GlucoseUnitActivity;

    iget-object p1, p1, Lcom/senseonics/gen12androidapp/GlucoseUnitActivity;->naviBarRightItemTextView:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 43
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/GlucoseUnitActivity$1;->this$0:Lcom/senseonics/gen12androidapp/GlucoseUnitActivity;

    invoke-static {p1}, Lcom/senseonics/gen12androidapp/GlucoseUnitActivity;->-$$Nest$fgetglucoseUnitFragment(Lcom/senseonics/gen12androidapp/GlucoseUnitActivity;)Lcom/senseonics/fragments/GlucoseUnitFragment;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 44
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/GlucoseUnitActivity$1;->this$0:Lcom/senseonics/gen12androidapp/GlucoseUnitActivity;

    invoke-static {p1}, Lcom/senseonics/gen12androidapp/GlucoseUnitActivity;->-$$Nest$fgetglucoseUnitFragment(Lcom/senseonics/gen12androidapp/GlucoseUnitActivity;)Lcom/senseonics/fragments/GlucoseUnitFragment;

    move-result-object p1

    iget-object p1, p1, Lcom/senseonics/fragments/GlucoseUnitFragment;->radioMgDLType:Landroid/widget/CheckBox;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/senseonics/gen12androidapp/GlucoseUnitActivity$1;->this$0:Lcom/senseonics/gen12androidapp/GlucoseUnitActivity;

    invoke-static {p1}, Lcom/senseonics/gen12androidapp/GlucoseUnitActivity;->-$$Nest$fgetglucoseUnitFragment(Lcom/senseonics/gen12androidapp/GlucoseUnitActivity;)Lcom/senseonics/fragments/GlucoseUnitFragment;

    move-result-object p1

    iget-object p1, p1, Lcom/senseonics/fragments/GlucoseUnitFragment;->radioMmolType:Landroid/widget/CheckBox;

    if-eqz p1, :cond_1

    .line 46
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/GlucoseUnitActivity$1;->this$0:Lcom/senseonics/gen12androidapp/GlucoseUnitActivity;

    invoke-static {p1}, Lcom/senseonics/gen12androidapp/GlucoseUnitActivity;->-$$Nest$fgetglucoseUnitFragment(Lcom/senseonics/gen12androidapp/GlucoseUnitActivity;)Lcom/senseonics/fragments/GlucoseUnitFragment;

    move-result-object p1

    iget-object p1, p1, Lcom/senseonics/fragments/GlucoseUnitFragment;->radioMgDLType:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    const-string v0, "currentGlucoseUnit"

    if-eqz p1, :cond_0

    .line 47
    sget-object p1, Lcom/senseonics/util/Utils$GLUCOSE_UNIT;->GLUCOSE_UNIT_MG_DL:Lcom/senseonics/util/Utils$GLUCOSE_UNIT;

    sput-object p1, Lcom/senseonics/util/Utils;->currentGlucoseUnit:Lcom/senseonics/util/Utils$GLUCOSE_UNIT;

    .line 48
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/GlucoseUnitActivity$1;->this$0:Lcom/senseonics/gen12androidapp/GlucoseUnitActivity;

    sget-object v1, Lcom/senseonics/util/Utils$GLUCOSE_UNIT;->GLUCOSE_UNIT_MG_DL:Lcom/senseonics/util/Utils$GLUCOSE_UNIT;

    invoke-virtual {v1}, Lcom/senseonics/util/Utils$GLUCOSE_UNIT;->ordinal()I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/senseonics/util/Utils;->saveSettings(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    .line 50
    :cond_0
    sget-object p1, Lcom/senseonics/util/Utils$GLUCOSE_UNIT;->GLUCOSE_UNIT_MMOL_L:Lcom/senseonics/util/Utils$GLUCOSE_UNIT;

    sput-object p1, Lcom/senseonics/util/Utils;->currentGlucoseUnit:Lcom/senseonics/util/Utils$GLUCOSE_UNIT;

    .line 51
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/GlucoseUnitActivity$1;->this$0:Lcom/senseonics/gen12androidapp/GlucoseUnitActivity;

    sget-object v1, Lcom/senseonics/util/Utils$GLUCOSE_UNIT;->GLUCOSE_UNIT_MMOL_L:Lcom/senseonics/util/Utils$GLUCOSE_UNIT;

    invoke-virtual {v1}, Lcom/senseonics/util/Utils$GLUCOSE_UNIT;->ordinal()I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/senseonics/util/Utils;->saveSettings(Landroid/content/Context;Ljava/lang/String;I)V

    .line 56
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/GlucoseUnitActivity$1;->this$0:Lcom/senseonics/gen12androidapp/GlucoseUnitActivity;

    iget-object p1, p1, Lcom/senseonics/gen12androidapp/GlucoseUnitActivity;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v0, Lcom/senseonics/events/UpdateExtensionEvent;

    invoke-direct {v0}, Lcom/senseonics/events/UpdateExtensionEvent;-><init>()V

    invoke-virtual {p1, v0}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 59
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/senseonics/gen12androidapp/GlucoseUnitActivity$1$1;

    invoke-direct {v0, p0}, Lcom/senseonics/gen12androidapp/GlucoseUnitActivity$1$1;-><init>(Lcom/senseonics/gen12androidapp/GlucoseUnitActivity$1;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
