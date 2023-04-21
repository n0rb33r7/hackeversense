.class Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$4;
.super Ljava/lang/Object;
.source "SoundSettingsSimplifiedPresenter.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;->getLowGlucoseOverrideSwitchCheckedChangeListener()Landroid/widget/CompoundButton$OnCheckedChangeListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;


# direct methods
.method constructor <init>(Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;)V
    .locals 0

    .line 237
    iput-object p1, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$4;->this$0:Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 8

    .line 240
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$4;->this$0:Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;

    invoke-static {p1}, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;->-$$Nest$fgetnotificationDndManager(Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;)Lcom/senseonics/util/NotificationDndManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/senseonics/util/NotificationDndManager;->isOverrideDndAccessGranted()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 241
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$4;->this$0:Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;

    invoke-static {p1}, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;->-$$Nest$fgetnotificationDndManager(Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;)Lcom/senseonics/util/NotificationDndManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/senseonics/util/NotificationDndManager;->setIsOverridePhoneSettingLowGlucoseAlarmEnabled(Z)V

    goto :goto_0

    .line 243
    :cond_0
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$4;->this$0:Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;

    invoke-static {p1}, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;->-$$Nest$mrefreshView(Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;)V

    .line 245
    new-instance v4, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$4$1;

    invoke-direct {v4, p0}, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$4$1;-><init>(Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$4;)V

    .line 251
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$4;->this$0:Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;

    iget-object p1, p1, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;->view:Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$SoundSettingsSimplifiedView;

    const/4 v1, -0x1

    const v2, 0x7f1102eb

    const/4 v3, 0x0

    const/4 v5, 0x1

    const v6, 0x7f110083

    const v7, 0x7f1102d7

    invoke-interface/range {v0 .. v7}, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$SoundSettingsSimplifiedView;->showDialogWithCustomButtons(IIILcom/senseonics/view/SimpleDialogFragment$OnDismissListener;ZII)V

    :goto_0
    return-void
.end method
