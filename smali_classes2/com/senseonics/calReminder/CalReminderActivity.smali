.class public Lcom/senseonics/calReminder/CalReminderActivity;
.super Lcom/senseonics/gen12androidapp/BaseMVPActivity;
.source "CalReminderActivity.java"

# interfaces
.implements Lcom/senseonics/calReminder/CalReminderPresenter$CalReminderView;


# instance fields
.field presenter:Lcom/senseonics/calReminder/CalReminderPresenter;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field reminder1Switch:Landroid/widget/Switch;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0902fb
    .end annotation
.end field

.field reminder1TextView:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0902fc
    .end annotation
.end field

.field reminder1TimeLayout:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0902fd
    .end annotation
.end field

.field reminder1TimeTextView:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0902fe
    .end annotation
.end field

.field reminder2Switch:Landroid/widget/Switch;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0902ff
    .end annotation
.end field

.field reminder2TextView:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090300
    .end annotation
.end field

.field reminder2TimeLayout:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090301
    .end annotation
.end field

.field reminder2TimeTextView:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090302
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/BaseMVPActivity;-><init>()V

    return-void
.end method

.method private refreshReminderView(ZLandroid/widget/CompoundButton$OnCheckedChangeListener;Ljava/lang/String;Landroid/widget/TextView;Landroid/widget/Switch;Landroid/widget/RelativeLayout;Landroid/widget/TextView;)V
    .locals 2

    const/4 v0, 0x1

    .line 81
    invoke-static {p0, v0}, Lcom/senseonics/util/StyleManager;->getTextColorForState(Landroid/content/Context;Z)I

    move-result v1

    invoke-virtual {p4, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 83
    invoke-static {p5}, Lcom/senseonics/util/AccountConfigurations;->setSwitchStyle(Landroid/widget/Switch;)V

    .line 84
    invoke-virtual {p5, v0}, Landroid/widget/Switch;->setEnabled(Z)V

    const/4 p4, 0x0

    .line 85
    invoke-virtual {p5, p4}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 86
    invoke-virtual {p5, p1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 87
    invoke-virtual {p5, p2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 90
    :goto_0
    invoke-virtual {p6, v0}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 91
    invoke-virtual {p7, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    invoke-static {p0, v0}, Lcom/senseonics/util/StyleManager;->getTextColorForState(Landroid/content/Context;Z)I

    move-result p1

    invoke-virtual {p7, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method


# virtual methods
.method protected attachToPresenter()V
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/senseonics/calReminder/CalReminderActivity;->presenter:Lcom/senseonics/calReminder/CalReminderPresenter;

    invoke-virtual {v0, p0}, Lcom/senseonics/calReminder/CalReminderPresenter;->attach(Lcom/senseonics/calReminder/CalReminderPresenter$CalReminderView;)V

    return-void
.end method

.method protected detachFromPresenter()V
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/senseonics/calReminder/CalReminderActivity;->presenter:Lcom/senseonics/calReminder/CalReminderPresenter;

    invoke-virtual {v0}, Lcom/senseonics/calReminder/CalReminderPresenter;->detach()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 46
    invoke-super {p0, p1}, Lcom/senseonics/gen12androidapp/BaseMVPActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0078

    .line 47
    invoke-virtual {p0, p1}, Lcom/senseonics/calReminder/CalReminderActivity;->initializeLayout(I)Landroid/view/View;

    const p1, 0x7f11007d

    .line 49
    invoke-virtual {p0, p1}, Lcom/senseonics/calReminder/CalReminderActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/senseonics/calReminder/CalReminderActivity;->configureNaviBar(ILjava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    return-void
.end method

.method public refreshReminder1View(ZLandroid/widget/CompoundButton$OnCheckedChangeListener;Ljava/lang/String;)V
    .locals 8

    .line 71
    iget-object v4, p0, Lcom/senseonics/calReminder/CalReminderActivity;->reminder1TextView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/senseonics/calReminder/CalReminderActivity;->reminder1Switch:Landroid/widget/Switch;

    iget-object v6, p0, Lcom/senseonics/calReminder/CalReminderActivity;->reminder1TimeLayout:Landroid/widget/RelativeLayout;

    iget-object v7, p0, Lcom/senseonics/calReminder/CalReminderActivity;->reminder1TimeTextView:Landroid/widget/TextView;

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v7}, Lcom/senseonics/calReminder/CalReminderActivity;->refreshReminderView(ZLandroid/widget/CompoundButton$OnCheckedChangeListener;Ljava/lang/String;Landroid/widget/TextView;Landroid/widget/Switch;Landroid/widget/RelativeLayout;Landroid/widget/TextView;)V

    return-void
.end method

.method public refreshReminder2View(ZLandroid/widget/CompoundButton$OnCheckedChangeListener;Ljava/lang/String;)V
    .locals 8

    .line 76
    iget-object v4, p0, Lcom/senseonics/calReminder/CalReminderActivity;->reminder2TextView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/senseonics/calReminder/CalReminderActivity;->reminder2Switch:Landroid/widget/Switch;

    iget-object v6, p0, Lcom/senseonics/calReminder/CalReminderActivity;->reminder2TimeLayout:Landroid/widget/RelativeLayout;

    iget-object v7, p0, Lcom/senseonics/calReminder/CalReminderActivity;->reminder2TimeTextView:Landroid/widget/TextView;

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v7}, Lcom/senseonics/calReminder/CalReminderActivity;->refreshReminderView(ZLandroid/widget/CompoundButton$OnCheckedChangeListener;Ljava/lang/String;Landroid/widget/TextView;Landroid/widget/Switch;Landroid/widget/RelativeLayout;Landroid/widget/TextView;)V

    return-void
.end method

.method public setupView(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/senseonics/calReminder/CalReminderActivity;->reminder1TimeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    iget-object p1, p0, Lcom/senseonics/calReminder/CalReminderActivity;->reminder2TimeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
