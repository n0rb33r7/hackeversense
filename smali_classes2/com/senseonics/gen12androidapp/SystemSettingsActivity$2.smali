.class Lcom/senseonics/gen12androidapp/SystemSettingsActivity$2;
.super Ljava/lang/Object;
.source "SystemSettingsActivity.java"

# interfaces
.implements Lcom/senseonics/events/EventUtils$PickerManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->addGlucoseUnitView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/gen12androidapp/SystemSettingsActivity;

.field final synthetic val$rightTextView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/senseonics/gen12androidapp/SystemSettingsActivity;Landroid/widget/TextView;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity$2;->this$0:Lcom/senseonics/gen12androidapp/SystemSettingsActivity;

    iput-object p2, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity$2;->val$rightTextView:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public selected(I)V
    .locals 2

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 171
    :cond_0
    sget-object p1, Lcom/senseonics/util/Utils$GLUCOSE_UNIT;->GLUCOSE_UNIT_MMOL_L:Lcom/senseonics/util/Utils$GLUCOSE_UNIT;

    sput-object p1, Lcom/senseonics/util/Utils;->currentGlucoseUnit:Lcom/senseonics/util/Utils$GLUCOSE_UNIT;

    goto :goto_0

    .line 168
    :cond_1
    sget-object p1, Lcom/senseonics/util/Utils$GLUCOSE_UNIT;->GLUCOSE_UNIT_MG_DL:Lcom/senseonics/util/Utils$GLUCOSE_UNIT;

    sput-object p1, Lcom/senseonics/util/Utils;->currentGlucoseUnit:Lcom/senseonics/util/Utils$GLUCOSE_UNIT;

    .line 174
    :goto_0
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity$2;->this$0:Lcom/senseonics/gen12androidapp/SystemSettingsActivity;

    .line 175
    invoke-static {p1}, Lcom/senseonics/util/Utils;->getGlucoseUnitString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 176
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity$2;->val$rightTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity$2;->this$0:Lcom/senseonics/gen12androidapp/SystemSettingsActivity;

    sget-object v0, Lcom/senseonics/util/Utils;->currentGlucoseUnit:Lcom/senseonics/util/Utils$GLUCOSE_UNIT;

    .line 179
    invoke-virtual {v0}, Lcom/senseonics/util/Utils$GLUCOSE_UNIT;->ordinal()I

    move-result v0

    const-string v1, "currentGlucoseUnit"

    .line 177
    invoke-static {p1, v1, v0}, Lcom/senseonics/util/Utils;->saveSettings(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method
