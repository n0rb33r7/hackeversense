.class Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$4$1;
.super Lcom/senseonics/view/SimpleDialogFragment$OnDismissListener;
.source "SoundSettingsSimplifiedPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$4;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$4;


# direct methods
.method constructor <init>(Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$4;)V
    .locals 0

    .line 245
    iput-object p1, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$4$1;->this$1:Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$4;

    invoke-direct {p0}, Lcom/senseonics/view/SimpleDialogFragment$OnDismissListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccept()V
    .locals 1

    .line 248
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$4$1;->this$1:Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$4;

    iget-object v0, v0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$4;->this$0:Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;

    iget-object v0, v0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;->view:Ljava/lang/Object;

    check-cast v0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$SoundSettingsSimplifiedView;

    invoke-interface {v0}, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$SoundSettingsSimplifiedView;->openNotificationPolicyAccessSettings()V

    return-void
.end method
