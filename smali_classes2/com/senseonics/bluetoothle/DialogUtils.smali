.class public Lcom/senseonics/bluetoothle/DialogUtils;
.super Ljava/lang/Object;
.source "DialogUtils.java"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field private final MAX_REPEATED_ALERTS:I

.field private final MAX_REPEATED_ALERTS_TEST_POPUP:I

.field private alertHelper:Lcom/senseonics/util/AlertHelper;

.field private appUpdateDialog:Landroid/app/Dialog;

.field private final customDialogs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/senseonics/util/dialogs/CustomDialogInfo;",
            ">;"
        }
    .end annotation
.end field

.field public doNotDisturbAlertDialog:Landroid/app/Dialog;

.field public moreThanMaxAlertDialog:Landroid/app/Dialog;

.field private nullTimeChangedListener:Lnet/simonvt/timepicker/TimePicker$OnTimeChangedListener;

.field private tempProfileAlertDialog:Landroid/app/Dialog;

.field private tempProfileManager:Lcom/senseonics/bluetoothle/TempProfileManager;

.field private transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;


# direct methods
.method static bridge synthetic -$$Nest$fgetappUpdateDialog(Lcom/senseonics/bluetoothle/DialogUtils;)Landroid/app/Dialog;
    .locals 0

    iget-object p0, p0, Lcom/senseonics/bluetoothle/DialogUtils;->appUpdateDialog:Landroid/app/Dialog;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcustomDialogs(Lcom/senseonics/bluetoothle/DialogUtils;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/senseonics/bluetoothle/DialogUtils;->customDialogs:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetnullTimeChangedListener(Lcom/senseonics/bluetoothle/DialogUtils;)Lnet/simonvt/timepicker/TimePicker$OnTimeChangedListener;
    .locals 0

    iget-object p0, p0, Lcom/senseonics/bluetoothle/DialogUtils;->nullTimeChangedListener:Lnet/simonvt/timepicker/TimePicker$OnTimeChangedListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettempProfileAlertDialog(Lcom/senseonics/bluetoothle/DialogUtils;)Landroid/app/Dialog;
    .locals 0

    iget-object p0, p0, Lcom/senseonics/bluetoothle/DialogUtils;->tempProfileAlertDialog:Landroid/app/Dialog;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mopenPlayStore(Lcom/senseonics/bluetoothle/DialogUtils;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/senseonics/bluetoothle/DialogUtils;->openPlayStore(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Lcom/senseonics/model/TransmitterStateModel;Lcom/senseonics/bluetoothle/TempProfileManager;Lcom/senseonics/util/AlertHelper;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/senseonics/bluetoothle/DialogUtils;-><init>(Lcom/senseonics/model/TransmitterStateModel;Lcom/senseonics/bluetoothle/TempProfileManager;Lcom/senseonics/util/AlertHelper;Ljava/util/ArrayList;)V

    return-void
.end method

.method protected constructor <init>(Lcom/senseonics/model/TransmitterStateModel;Lcom/senseonics/bluetoothle/TempProfileManager;Lcom/senseonics/util/AlertHelper;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/senseonics/model/TransmitterStateModel;",
            "Lcom/senseonics/bluetoothle/TempProfileManager;",
            "Lcom/senseonics/util/AlertHelper;",
            "Ljava/util/ArrayList<",
            "Lcom/senseonics/util/dialogs/CustomDialogInfo;",
            ">;)V"
        }
    .end annotation

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3e8

    .line 88
    iput v0, p0, Lcom/senseonics/bluetoothle/DialogUtils;->MAX_REPEATED_ALERTS_TEST_POPUP:I

    const/4 v0, 0x2

    .line 89
    iput v0, p0, Lcom/senseonics/bluetoothle/DialogUtils;->MAX_REPEATED_ALERTS:I

    .line 1164
    new-instance v0, Lcom/senseonics/bluetoothle/DialogUtils$27;

    invoke-direct {v0, p0}, Lcom/senseonics/bluetoothle/DialogUtils$27;-><init>(Lcom/senseonics/bluetoothle/DialogUtils;)V

    iput-object v0, p0, Lcom/senseonics/bluetoothle/DialogUtils;->nullTimeChangedListener:Lnet/simonvt/timepicker/TimePicker$OnTimeChangedListener;

    .line 97
    iput-object p1, p0, Lcom/senseonics/bluetoothle/DialogUtils;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    .line 98
    iput-object p2, p0, Lcom/senseonics/bluetoothle/DialogUtils;->tempProfileManager:Lcom/senseonics/bluetoothle/TempProfileManager;

    .line 99
    iput-object p3, p0, Lcom/senseonics/bluetoothle/DialogUtils;->alertHelper:Lcom/senseonics/util/AlertHelper;

    .line 100
    iput-object p4, p0, Lcom/senseonics/bluetoothle/DialogUtils;->customDialogs:Ljava/util/List;

    return-void
.end method

.method private HideKeyboard(Landroid/app/Dialog;)V
    .locals 1

    .line 1348
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    return-void
.end method

.method private addDialogInfo(Lcom/senseonics/util/dialogs/CustomDialogInfo;)V
    .locals 2

    .line 262
    iget-object v0, p0, Lcom/senseonics/bluetoothle/DialogUtils;->customDialogs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 264
    iget-object v1, p0, Lcom/senseonics/bluetoothle/DialogUtils;->customDialogs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/senseonics/util/dialogs/CustomDialogInfo;

    .line 265
    iget-object v1, p0, Lcom/senseonics/bluetoothle/DialogUtils;->customDialogs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 266
    invoke-virtual {v0}, Lcom/senseonics/util/dialogs/CustomDialogInfo;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 267
    invoke-virtual {v0}, Lcom/senseonics/util/dialogs/CustomDialogInfo;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/senseonics/bluetoothle/DialogUtils;->customDialogs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private createDoNotDisturbAlertDialog(Landroid/content/Context;IIIILjava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "IIII",
            "Ljava/lang/Class<",
            "Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;",
            ">;)V"
        }
    .end annotation

    .line 893
    iget-object v0, p0, Lcom/senseonics/bluetoothle/DialogUtils;->doNotDisturbAlertDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 894
    iget-object v0, p0, Lcom/senseonics/bluetoothle/DialogUtils;->doNotDisturbAlertDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 896
    :cond_0
    new-instance v0, Landroid/app/Dialog;

    const v1, 0x7f12013c

    invoke-direct {v0, p1, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/senseonics/bluetoothle/DialogUtils;->doNotDisturbAlertDialog:Landroid/app/Dialog;

    .line 898
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c005d

    const/4 v2, 0x0

    .line 899
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0903cf

    .line 901
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/4 v2, 0x0

    .line 902
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 903
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p2, 0x7f0903af

    .line 905
    invoke-virtual {v0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 907
    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 906
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p2, 0x7f0900c9

    .line 909
    invoke-virtual {v0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 910
    invoke-virtual {p1, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 911
    new-instance p3, Lcom/senseonics/bluetoothle/DialogUtils$20;

    invoke-direct {p3, p0}, Lcom/senseonics/bluetoothle/DialogUtils$20;-><init>(Lcom/senseonics/bluetoothle/DialogUtils;)V

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0902ba

    .line 919
    invoke-virtual {v0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 920
    invoke-virtual {p1, p5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 921
    new-instance p3, Lcom/senseonics/bluetoothle/DialogUtils$21;

    invoke-direct {p3, p0, p1, p6}, Lcom/senseonics/bluetoothle/DialogUtils$21;-><init>(Lcom/senseonics/bluetoothle/DialogUtils;Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 935
    iget-object p1, p0, Lcom/senseonics/bluetoothle/DialogUtils;->doNotDisturbAlertDialog:Landroid/app/Dialog;

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 936
    iget-object p1, p0, Lcom/senseonics/bluetoothle/DialogUtils;->doNotDisturbAlertDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private createMoreThanMaxAlertDialog(Landroid/content/Context;IIIILjava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "IIII",
            "Ljava/lang/Class<",
            "Lcom/senseonics/gen12androidapp/NotificationsActivity;",
            ">;)V"
        }
    .end annotation

    .line 693
    iget-object v0, p0, Lcom/senseonics/bluetoothle/DialogUtils;->moreThanMaxAlertDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 694
    iget-object v0, p0, Lcom/senseonics/bluetoothle/DialogUtils;->moreThanMaxAlertDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 696
    :cond_0
    new-instance v0, Landroid/app/Dialog;

    const v1, 0x7f12013c

    invoke-direct {v0, p1, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/senseonics/bluetoothle/DialogUtils;->moreThanMaxAlertDialog:Landroid/app/Dialog;

    .line 698
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c005d

    const/4 v2, 0x0

    .line 699
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0903cf

    .line 701
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/4 v2, 0x0

    .line 702
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 703
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p2, 0x7f0903af

    .line 705
    invoke-virtual {v0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 707
    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 706
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p2, 0x7f0900c9

    .line 709
    invoke-virtual {v0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 710
    invoke-virtual {p1, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 711
    new-instance p3, Lcom/senseonics/bluetoothle/DialogUtils$14;

    invoke-direct {p3, p0, p1, p6}, Lcom/senseonics/bluetoothle/DialogUtils$14;-><init>(Lcom/senseonics/bluetoothle/DialogUtils;Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0902ba

    .line 723
    invoke-virtual {v0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 724
    invoke-virtual {p1, p5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 725
    new-instance p1, Lcom/senseonics/bluetoothle/DialogUtils$15;

    invoke-direct {p1, p0}, Lcom/senseonics/bluetoothle/DialogUtils$15;-><init>(Lcom/senseonics/bluetoothle/DialogUtils;)V

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 734
    iget-object p1, p0, Lcom/senseonics/bluetoothle/DialogUtils;->moreThanMaxAlertDialog:Landroid/app/Dialog;

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 735
    iget-object p1, p0, Lcom/senseonics/bluetoothle/DialogUtils;->moreThanMaxAlertDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private createTempProfileTurnedOffPopup(Landroid/content/Context;IIIILjava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "IIII",
            "Ljava/lang/Class<",
            "Lcom/senseonics/gen12androidapp/TempGlucoseProfileActivity;",
            ">;)V"
        }
    .end annotation

    .line 832
    iget-object v0, p0, Lcom/senseonics/bluetoothle/DialogUtils;->tempProfileAlertDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 833
    iget-object v0, p0, Lcom/senseonics/bluetoothle/DialogUtils;->tempProfileAlertDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 835
    :cond_0
    new-instance v0, Landroid/app/Dialog;

    const v1, 0x7f12013c

    invoke-direct {v0, p1, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/senseonics/bluetoothle/DialogUtils;->tempProfileAlertDialog:Landroid/app/Dialog;

    .line 837
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c005d

    const/4 v2, 0x0

    .line 838
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0903cf

    .line 840
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/4 v2, 0x0

    .line 841
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 842
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p2, 0x7f0903af

    .line 844
    invoke-virtual {v0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 846
    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 845
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p2, 0x7f0900c9

    .line 848
    invoke-virtual {v0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 849
    invoke-virtual {p1, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 850
    new-instance p3, Lcom/senseonics/bluetoothle/DialogUtils$18;

    invoke-direct {p3, p0}, Lcom/senseonics/bluetoothle/DialogUtils$18;-><init>(Lcom/senseonics/bluetoothle/DialogUtils;)V

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0902ba

    .line 858
    invoke-virtual {v0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 859
    invoke-virtual {p1, p5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 860
    new-instance p3, Lcom/senseonics/bluetoothle/DialogUtils$19;

    invoke-direct {p3, p0, p1, p6}, Lcom/senseonics/bluetoothle/DialogUtils$19;-><init>(Lcom/senseonics/bluetoothle/DialogUtils;Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 874
    iget-object p1, p0, Lcom/senseonics/bluetoothle/DialogUtils;->tempProfileAlertDialog:Landroid/app/Dialog;

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 875
    iget-object p1, p0, Lcom/senseonics/bluetoothle/DialogUtils;->tempProfileAlertDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private createUpdateAppPopup(Landroid/content/Context;IIIILjava/lang/String;)V
    .locals 2

    .line 761
    iget-object p6, p0, Lcom/senseonics/bluetoothle/DialogUtils;->appUpdateDialog:Landroid/app/Dialog;

    if-eqz p6, :cond_0

    invoke-virtual {p6}, Landroid/app/Dialog;->isShowing()Z

    move-result p6

    if-eqz p6, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    .line 765
    move-object p6, p1

    check-cast p6, Landroid/app/Activity;

    invoke-virtual {p6}, Landroid/app/Activity;->isFinishing()Z

    move-result p6

    if-eqz p6, :cond_1

    goto :goto_0

    .line 769
    :cond_1
    new-instance p6, Landroid/app/Dialog;

    const v0, 0x7f12013c

    invoke-direct {p6, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object p6, p0, Lcom/senseonics/bluetoothle/DialogUtils;->appUpdateDialog:Landroid/app/Dialog;

    .line 771
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p6

    const v0, 0x7f0c005d

    const/4 v1, 0x0

    .line 772
    invoke-virtual {p6, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p6

    const v0, 0x7f0903cf

    .line 774
    invoke-virtual {p6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x0

    .line 775
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 776
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p2, 0x7f0903af

    .line 778
    invoke-virtual {p6, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 780
    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 779
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p2, 0x7f0900c9

    .line 782
    invoke-virtual {p6, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 783
    invoke-virtual {p1, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 784
    new-instance p3, Lcom/senseonics/bluetoothle/DialogUtils$16;

    invoke-direct {p3, p0}, Lcom/senseonics/bluetoothle/DialogUtils$16;-><init>(Lcom/senseonics/bluetoothle/DialogUtils;)V

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0902ba

    .line 792
    invoke-virtual {p6, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 793
    invoke-virtual {p1, p5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 794
    new-instance p3, Lcom/senseonics/bluetoothle/DialogUtils$17;

    invoke-direct {p3, p0, p1}, Lcom/senseonics/bluetoothle/DialogUtils$17;-><init>(Lcom/senseonics/bluetoothle/DialogUtils;Landroid/content/Context;)V

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 804
    iget-object p1, p0, Lcom/senseonics/bluetoothle/DialogUtils;->appUpdateDialog:Landroid/app/Dialog;

    invoke-virtual {p1, p6}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 805
    iget-object p1, p0, Lcom/senseonics/bluetoothle/DialogUtils;->appUpdateDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :cond_2
    :goto_0
    return-void
.end method

.method private openPlayStore(Landroid/content/Context;)V
    .locals 3

    const-string v0, "android.intent.action.VIEW"

    .line 752
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "market://developer?id=Senseonics"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 754
    :catch_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "https://play.google.com/store/apps/developer?id=Senseonics"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method private showCommonNotificationDialog(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/senseonics/util/dialogs/NotificationDialogManager;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;Lcom/senseonics/events/EventPoint;)Landroid/app/Dialog;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p8

    move/from16 v7, p10

    .line 952
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v8, v8, Landroid/content/res/Configuration;->orientation:I

    const/4 v10, 0x2

    if-ne v8, v10, :cond_0

    const/4 v8, 0x1

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    .line 954
    :goto_0
    new-instance v10, Landroid/app/Dialog;

    const v11, 0x7f12013b

    invoke-direct {v10, v1, v11}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 955
    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v11

    const v12, 0x7f0c003f

    const/4 v13, 0x0

    .line 956
    invoke-virtual {v11, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    if-nez v8, :cond_1

    .line 959
    invoke-virtual {v10}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v12

    .line 960
    iget v13, v12, Landroid/view/WindowManager$LayoutParams;->y:I

    add-int/lit16 v13, v13, 0x96

    iput v13, v12, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 961
    invoke-virtual {v10}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v13

    invoke-virtual {v13, v12}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_1
    const-string v12, ""

    .line 964
    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    const v14, 0x7f09032e

    if-eqz v13, :cond_2

    .line 965
    invoke-virtual {v11, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/view/ViewStub;

    const v14, 0x7f0c00f6

    .line 966
    invoke-virtual {v13, v14}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 967
    invoke-virtual {v13}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    goto :goto_1

    .line 969
    :cond_2
    invoke-virtual {v11, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/view/ViewStub;

    const v14, 0x7f0c00f7

    .line 970
    invoke-virtual {v13, v14}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 971
    invoke-virtual {v13}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    :goto_1
    const v13, 0x7f0902af

    .line 974
    invoke-virtual {v11, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout;

    .line 975
    invoke-virtual {v13, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    const v13, 0x7f0903d2

    .line 978
    invoke-virtual {v11, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 979
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v14, 0x7f090196

    .line 982
    invoke-virtual {v11, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 983
    invoke-virtual {v14, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v15, 0x7f0903c9

    .line 986
    invoke-virtual {v11, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    move-object/from16 v16, v10

    .line 987
    invoke-virtual/range {p12 .. p12}, Lcom/senseonics/events/EventPoint;->getTimestamp()J

    move-result-wide v9

    .line 988
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    .line 989
    invoke-virtual {v5, v9, v10}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 990
    invoke-static {v5, v1}, Lcom/senseonics/util/TimeProvider;->formatWeekDateTime(Ljava/util/Calendar;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v5, 0x7f0900b0

    .line 993
    invoke-virtual {v11, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const/4 v9, -0x1

    if-eq v7, v9, :cond_3

    .line 996
    invoke-virtual {v1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    :cond_3
    const-string v7, " "

    .line 998
    :goto_2
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v7, 0x7f070056

    if-eqz v8, :cond_4

    .line 1000
    invoke-virtual {v5}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1001
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v10, v10

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    const/4 v7, 0x0

    invoke-virtual {v9, v10, v7, v6, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 1002
    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    const v5, 0x7f09005f

    .line 1006
    invoke-virtual {v11, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 1007
    new-instance v6, Landroid/text/method/ScrollingMovementMethod;

    invoke-direct {v6}, Landroid/text/method/ScrollingMovementMethod;-><init>()V

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    const-string v6, "</font>"

    .line 1008
    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1009
    invoke-static/range {p5 .. p5}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 1011
    :cond_5
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    if-eqz v8, :cond_6

    .line 1015
    invoke-virtual {v5}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1016
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f070056

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    const/4 v9, 0x0

    invoke-virtual {v4, v6, v9, v7, v9}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 1017
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_6
    const v4, 0x7f0903dc

    .line 1021
    invoke-virtual {v11, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 1022
    iget-object v5, v0, Lcom/senseonics/bluetoothle/DialogUtils;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v5}, Lcom/senseonics/model/TransmitterStateModel;->getTransmitterName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v12}, Lcom/google/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v4, 0x7f0801cd

    if-ne v2, v4, :cond_7

    const v2, 0x7f060021

    .line 1026
    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    .line 1027
    invoke-virtual {v13, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1028
    invoke-virtual {v14, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1029
    invoke-virtual {v15, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_7
    const v2, 0x7f0901d1

    .line 1032
    invoke-virtual {v11, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 1033
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->removeAlertHelp()Z

    move-result v4

    if-eqz v4, :cond_8

    const/16 v3, 0x8

    .line 1034
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4

    :cond_8
    const/4 v4, 0x0

    .line 1036
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1039
    new-instance v4, Lcom/senseonics/bluetoothle/DialogUtils$22;

    move-object/from16 v5, p11

    invoke-direct {v4, v0, v1, v5, v3}, Lcom/senseonics/bluetoothle/DialogUtils$22;-><init>(Lcom/senseonics/bluetoothle/DialogUtils;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_4
    const v2, 0x7f0900c9

    .line 1062
    invoke-virtual {v11, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0902ba

    .line 1063
    invoke-virtual {v11, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    move-object/from16 v4, p8

    .line 1066
    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 1067
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p9, :cond_9

    .line 1069
    sget-object v4, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1071
    :cond_9
    new-instance v4, Lcom/senseonics/bluetoothle/DialogUtils$23;

    move-object/from16 v5, p6

    move-object/from16 v6, v16

    invoke-direct {v4, v0, v6, v5}, Lcom/senseonics/bluetoothle/DialogUtils$23;-><init>(Lcom/senseonics/bluetoothle/DialogUtils;Landroid/app/Dialog;Lcom/senseonics/util/dialogs/NotificationDialogManager;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_5

    :cond_a
    move-object/from16 v5, p6

    move-object/from16 v6, v16

    :goto_5
    move-object/from16 v3, p7

    .line 1081
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1082
    new-instance v3, Lcom/senseonics/bluetoothle/DialogUtils$24;

    invoke-direct {v3, v0, v6, v5}, Lcom/senseonics/bluetoothle/DialogUtils$24;-><init>(Lcom/senseonics/bluetoothle/DialogUtils;Landroid/app/Dialog;Lcom/senseonics/util/dialogs/NotificationDialogManager;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1091
    invoke-virtual {v6, v11}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    const/4 v2, 0x0

    .line 1092
    invoke-virtual {v6, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 1094
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070252

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    .line 1096
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f070251

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    if-nez v8, :cond_b

    .line 1100
    invoke-virtual {v6}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Landroid/view/Window;->setLayout(II)V

    goto :goto_6

    .line 1102
    :cond_b
    invoke-virtual {v6}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/view/Window;->setLayout(II)V

    :goto_6
    return-object v6
.end method


# virtual methods
.method public addAPendingAlertOrAlarmDialog(Lcom/senseonics/events/AlertEventPoint;I)V
    .locals 1

    .line 258
    new-instance v0, Lcom/senseonics/util/dialogs/AlertDialogInfo;

    invoke-direct {v0, p1, p2}, Lcom/senseonics/util/dialogs/AlertDialogInfo;-><init>(Lcom/senseonics/events/AlertEventPoint;I)V

    invoke-direct {p0, v0}, Lcom/senseonics/bluetoothle/DialogUtils;->addDialogInfo(Lcom/senseonics/util/dialogs/CustomDialogInfo;)V

    return-void
.end method

.method public addAPendingCalibrationDialog(Lcom/senseonics/events/EventPoint;I)V
    .locals 1

    .line 337
    new-instance v0, Lcom/senseonics/util/dialogs/CalibrateDialogInfo;

    invoke-direct {v0, p1, p2}, Lcom/senseonics/util/dialogs/CalibrateDialogInfo;-><init>(Lcom/senseonics/events/EventPoint;I)V

    invoke-direct {p0, v0}, Lcom/senseonics/bluetoothle/DialogUtils;->addDialogInfo(Lcom/senseonics/util/dialogs/CustomDialogInfo;)V

    return-void
.end method

.method public addAPendingNotificationAlertOrAlarm(Lcom/senseonics/events/EventPoint;Lcom/senseonics/util/TransmitterMessageCode;)V
    .locals 2

    .line 475
    new-instance v0, Lcom/senseonics/util/dialogs/NotificationDialogInfo;

    invoke-virtual {p2}, Lcom/senseonics/util/TransmitterMessageCode;->notificationId()I

    move-result v1

    invoke-direct {v0, p1, p2, v1}, Lcom/senseonics/util/dialogs/NotificationDialogInfo;-><init>(Lcom/senseonics/events/EventPoint;Lcom/senseonics/util/TransmitterMessageCode;I)V

    invoke-direct {p0, v0}, Lcom/senseonics/bluetoothle/DialogUtils;->addDialogInfo(Lcom/senseonics/util/dialogs/CustomDialogInfo;)V

    return-void
.end method

.method public addAPendingRateOrPredictiveRateAlertDialog(Lcom/senseonics/events/AlertEventPoint;I)V
    .locals 1

    .line 399
    new-instance v0, Lcom/senseonics/util/dialogs/PredictiveRateAlertDialogInfo;

    invoke-direct {v0, p1, p2}, Lcom/senseonics/util/dialogs/PredictiveRateAlertDialogInfo;-><init>(Lcom/senseonics/events/AlertEventPoint;I)V

    invoke-direct {p0, v0}, Lcom/senseonics/bluetoothle/DialogUtils;->addDialogInfo(Lcom/senseonics/util/dialogs/CustomDialogInfo;)V

    return-void
.end method

.method public createAlertDialog(Landroid/content/Context;Lcom/senseonics/util/dialogs/AlertDialogInfo;)Landroid/app/Dialog;
    .locals 13

    .line 274
    invoke-virtual {p2}, Lcom/senseonics/util/dialogs/AlertDialogInfo;->getAlertEventPoint()Lcom/senseonics/events/AlertEventPoint;

    move-result-object v12

    .line 275
    invoke-virtual {v12}, Lcom/senseonics/events/AlertEventPoint;->getEventType()Lcom/senseonics/util/Utils$EVENT_TYPE;

    move-result-object v0

    .line 276
    invoke-virtual {v12}, Lcom/senseonics/events/AlertEventPoint;->getAlertType()Lcom/senseonics/util/Utils$ALERT_TYPE;

    move-result-object v1

    .line 283
    sget-object v2, Lcom/senseonics/bluetoothle/DialogUtils$37;->$SwitchMap$com$senseonics$util$Utils$EVENT_TYPE:[I

    invoke-virtual {v0}, Lcom/senseonics/util/Utils$EVENT_TYPE;->ordinal()I

    move-result v0

    aget v0, v2, v0

    const/4 v2, 0x1

    const v3, 0x7f110021

    const v4, 0x7f0801cd

    const-string v5, ""

    if-eq v0, v2, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v0, -0x1

    const/4 v1, 0x0

    move v2, v0

    move-object v3, v5

    move-object v4, v3

    goto :goto_3

    .line 295
    :cond_0
    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 296
    iget-object v2, p0, Lcom/senseonics/bluetoothle/DialogUtils;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    .line 297
    invoke-virtual {v2}, Lcom/senseonics/model/TransmitterStateModel;->getHighGlucoseAlarmThreshold()I

    move-result v2

    iget-object v3, p0, Lcom/senseonics/bluetoothle/DialogUtils;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    .line 298
    invoke-virtual {v3}, Lcom/senseonics/model/TransmitterStateModel;->getLowGlucoseAlarmThreshold()I

    move-result v3

    .line 296
    invoke-static {p1, v1, v2, v3}, Lcom/senseonics/util/TransmitterMessageCode;->getAlarmEventText(Landroid/content/Context;Lcom/senseonics/util/Utils$ALERT_TYPE;II)Ljava/lang/String;

    move-result-object v2

    .line 299
    sget-object v3, Lcom/senseonics/util/Utils$ALERT_TYPE;->LOW_GLUCOSE:Lcom/senseonics/util/Utils$ALERT_TYPE;

    if-ne v1, v3, :cond_1

    sget-object v1, Lcom/senseonics/util/TransmitterMessageCode;->LowGlucoseAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/senseonics/util/TransmitterMessageCode;->HighGlucoseAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    .line 300
    :goto_0
    invoke-virtual {v1}, Lcom/senseonics/util/TransmitterMessageCode;->getTitle()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 286
    :cond_2
    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 287
    iget-object v2, p0, Lcom/senseonics/bluetoothle/DialogUtils;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    .line 288
    invoke-virtual {v2}, Lcom/senseonics/model/TransmitterStateModel;->getHighGlucoseAlertThreshold()I

    move-result v2

    iget-object v3, p0, Lcom/senseonics/bluetoothle/DialogUtils;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    .line 289
    invoke-virtual {v3}, Lcom/senseonics/model/TransmitterStateModel;->getLowGlucoseAlertThreshold()I

    move-result v3

    .line 287
    invoke-static {p1, v1, v2, v3}, Lcom/senseonics/util/TransmitterMessageCode;->getAlertEventText(Landroid/content/Context;Lcom/senseonics/util/Utils$ALERT_TYPE;II)Ljava/lang/String;

    move-result-object v2

    .line 290
    sget-object v3, Lcom/senseonics/util/Utils$ALERT_TYPE;->LOW_GLUCOSE:Lcom/senseonics/util/Utils$ALERT_TYPE;

    if-ne v1, v3, :cond_3

    sget-object v1, Lcom/senseonics/util/TransmitterMessageCode;->LowGlucoseAlert:Lcom/senseonics/util/TransmitterMessageCode;

    goto :goto_1

    :cond_3
    sget-object v1, Lcom/senseonics/util/TransmitterMessageCode;->HighGlucoseAlert:Lcom/senseonics/util/TransmitterMessageCode;

    .line 291
    :goto_1
    invoke-virtual {v1}, Lcom/senseonics/util/TransmitterMessageCode;->getTitle()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_2
    move-object v5, v2

    move v2, v4

    move-object v4, v3

    move-object v3, v0

    .line 306
    :goto_3
    new-instance v6, Lcom/senseonics/bluetoothle/DialogUtils$4;

    invoke-direct {v6, p0, p2}, Lcom/senseonics/bluetoothle/DialogUtils$4;-><init>(Lcom/senseonics/bluetoothle/DialogUtils;Lcom/senseonics/util/dialogs/AlertDialogInfo;)V

    .line 319
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f11022a

    .line 320
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    .line 321
    invoke-virtual {v1}, Lcom/senseonics/util/TransmitterMessageCode;->getSubtitle()I

    move-result v10

    iget-object p2, p0, Lcom/senseonics/bluetoothle/DialogUtils;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    .line 322
    invoke-static {p1, v1, p2}, Lcom/senseonics/util/AlertHelper;->getHelpString(Landroid/content/Context;Lcom/senseonics/util/TransmitterMessageCode;Lcom/senseonics/model/TransmitterStateModel;)Ljava/lang/String;

    move-result-object v11

    const-string v8, ""

    move-object v0, p0

    move-object v1, p1

    .line 318
    invoke-direct/range {v0 .. v12}, Lcom/senseonics/bluetoothle/DialogUtils;->showCommonNotificationDialog(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/senseonics/util/dialogs/NotificationDialogManager;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;Lcom/senseonics/events/EventPoint;)Landroid/app/Dialog;

    move-result-object p1

    const/4 p2, 0x0

    .line 325
    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setCancelable(Z)V

    return-object p1
.end method

.method public createAlertDialogInfo(Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;Lcom/senseonics/events/AlertEventPoint;I)V
    .locals 0

    .line 253
    invoke-virtual {p0, p2, p3}, Lcom/senseonics/bluetoothle/DialogUtils;->addAPendingAlertOrAlarmDialog(Lcom/senseonics/events/AlertEventPoint;I)V

    .line 254
    invoke-virtual {p0, p1}, Lcom/senseonics/bluetoothle/DialogUtils;->showDialogs(Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;)V

    return-void
.end method

.method public createCalibrateDialog(Landroid/content/Context;Lcom/senseonics/util/dialogs/CalibrateDialogInfo;Lcom/senseonics/util/dialogs/NotificationDialogManager;)Landroid/app/Dialog;
    .locals 20

    move-object/from16 v13, p0

    move-object/from16 v1, p1

    .line 343
    invoke-virtual/range {p2 .. p2}, Lcom/senseonics/util/dialogs/CalibrateDialogInfo;->getEventPoint()Lcom/senseonics/events/EventPoint;

    move-result-object v12

    .line 345
    new-instance v6, Lcom/senseonics/bluetoothle/DialogUtils$5;

    move-object/from16 v0, p2

    move-object/from16 v2, p3

    invoke-direct {v6, v13, v2, v0}, Lcom/senseonics/bluetoothle/DialogUtils$5;-><init>(Lcom/senseonics/bluetoothle/DialogUtils;Lcom/senseonics/util/dialogs/NotificationDialogManager;Lcom/senseonics/util/dialogs/CalibrateDialogInfo;)V

    .line 359
    iget-object v0, v13, Lcom/senseonics/bluetoothle/DialogUtils;->alertHelper:Lcom/senseonics/util/AlertHelper;

    invoke-virtual {v12}, Lcom/senseonics/events/EventPoint;->getEventType()Lcom/senseonics/util/Utils$EVENT_TYPE;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/senseonics/util/AlertHelper;->getTransmitterMessageCodeForCalibrateEvent(Lcom/senseonics/util/Utils$EVENT_TYPE;)Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object v0

    .line 360
    sget-object v2, Lcom/senseonics/util/TransmitterMessageCode;->NumberOfMessages:Lcom/senseonics/util/TransmitterMessageCode;

    if-ne v0, v2, :cond_0

    .line 361
    invoke-virtual {v12}, Lcom/senseonics/events/EventPoint;->getNotificationEventType()Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object v0, v2

    :cond_0
    const v2, 0x7f110223

    .line 367
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f11006a

    .line 368
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 369
    sget-object v4, Lcom/senseonics/util/TransmitterMessageCode;->CalibrationSuspiciousAlert:Lcom/senseonics/util/TransmitterMessageCode;

    if-ne v0, v4, :cond_1

    const v2, 0x7f11022a

    .line 370
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    :cond_1
    move-object v7, v2

    move-object v8, v3

    .line 376
    invoke-virtual {v0}, Lcom/senseonics/util/TransmitterMessageCode;->getBackgroundImage()I

    move-result v2

    .line 377
    invoke-virtual {v0}, Lcom/senseonics/util/TransmitterMessageCode;->getType()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 378
    invoke-virtual {v0}, Lcom/senseonics/util/TransmitterMessageCode;->getTitle()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v14, v13, Lcom/senseonics/bluetoothle/DialogUtils;->alertHelper:Lcom/senseonics/util/AlertHelper;

    iget-object v5, v13, Lcom/senseonics/bluetoothle/DialogUtils;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    .line 379
    invoke-virtual {v5}, Lcom/senseonics/model/TransmitterStateModel;->getTransmitterName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual {v12}, Lcom/senseonics/events/EventPoint;->getTimestamp()J

    move-result-wide v17

    invoke-virtual {v12}, Lcom/senseonics/events/EventPoint;->getNotes()Ljava/lang/String;

    move-result-object v19

    move-object v15, v0

    invoke-virtual/range {v14 .. v19}, Lcom/senseonics/util/AlertHelper;->getNotificationMessageText(Lcom/senseonics/util/TransmitterMessageCode;Ljava/lang/String;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v9, 0x0

    .line 384
    invoke-virtual {v0}, Lcom/senseonics/util/TransmitterMessageCode;->getSubtitle()I

    move-result v10

    iget-object v11, v13, Lcom/senseonics/bluetoothle/DialogUtils;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    .line 385
    invoke-static {v1, v0, v11}, Lcom/senseonics/util/AlertHelper;->getHelpString(Landroid/content/Context;Lcom/senseonics/util/TransmitterMessageCode;Lcom/senseonics/model/TransmitterStateModel;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 374
    invoke-direct/range {v0 .. v12}, Lcom/senseonics/bluetoothle/DialogUtils;->showCommonNotificationDialog(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/senseonics/util/dialogs/NotificationDialogManager;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;Lcom/senseonics/events/EventPoint;)Landroid/app/Dialog;

    move-result-object v0

    const/4 v1, 0x0

    .line 387
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    return-object v0
.end method

.method public createCalibrateDialogInfo(Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;Lcom/senseonics/events/EventPoint;I)V
    .locals 0

    .line 332
    invoke-virtual {p0, p2, p3}, Lcom/senseonics/bluetoothle/DialogUtils;->addAPendingCalibrationDialog(Lcom/senseonics/events/EventPoint;I)V

    .line 333
    invoke-virtual {p0, p1}, Lcom/senseonics/bluetoothle/DialogUtils;->showDialogs(Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;)V

    return-void
.end method

.method public createDatePickerDialog(Landroid/content/Context;Ljava/util/Calendar;Ljava/util/Calendar;Ljava/util/Calendar;Lcom/senseonics/util/dialogs/DateDialogManager;)Landroid/app/Dialog;
    .locals 6

    .line 1112
    new-instance v0, Landroid/app/Dialog;

    const v1, 0x7f12013c

    invoke-direct {v0, p1, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 v1, 0x0

    .line 1113
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 1114
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v2, 0x7f0c004c

    const/4 v3, 0x0

    .line 1115
    invoke-virtual {p1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const v2, 0x7f09010c

    .line 1117
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lnet/simonvt/datepicker/DatePicker;

    const v4, 0x7f0900c9

    .line 1118
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 1119
    new-instance v5, Lcom/senseonics/bluetoothle/DialogUtils$25;

    invoke-direct {v5, p0, v0}, Lcom/senseonics/bluetoothle/DialogUtils$25;-><init>(Lcom/senseonics/bluetoothle/DialogUtils;Landroid/app/Dialog;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v4, 0x7f0902ba

    .line 1127
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 1128
    new-instance v5, Lcom/senseonics/bluetoothle/DialogUtils$26;

    invoke-direct {v5, p0, v2, p5, v0}, Lcom/senseonics/bluetoothle/DialogUtils$26;-><init>(Lcom/senseonics/bluetoothle/DialogUtils;Lnet/simonvt/datepicker/DatePicker;Lcom/senseonics/util/dialogs/DateDialogManager;Landroid/app/Dialog;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p5, 0x1

    .line 1148
    invoke-virtual {p2, p5}, Ljava/util/Calendar;->get(I)I

    move-result p5

    const/4 v4, 0x2

    .line 1149
    invoke-virtual {p2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v5, 0x5

    .line 1150
    invoke-virtual {p2, v5}, Ljava/util/Calendar;->get(I)I

    move-result p2

    .line 1151
    invoke-virtual {v2, p5, v4, p2, v3}, Lnet/simonvt/datepicker/DatePicker;->init(IIILnet/simonvt/datepicker/DatePicker$OnDateChangedListener;)V

    .line 1153
    invoke-virtual {v2, v1}, Lnet/simonvt/datepicker/DatePicker;->setCalendarViewShown(Z)V

    .line 1154
    invoke-virtual {p3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p2

    invoke-virtual {v2, p2, p3}, Lnet/simonvt/datepicker/DatePicker;->setMinDate(J)V

    .line 1155
    invoke-virtual {p4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p2

    invoke-virtual {v2, p2, p3}, Lnet/simonvt/datepicker/DatePicker;->setMaxDate(J)V

    .line 1157
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 1159
    invoke-direct {p0, v0}, Lcom/senseonics/bluetoothle/DialogUtils;->HideKeyboard(Landroid/app/Dialog;)V

    return-object v0
.end method

.method public createDateTimePickerDialog(Landroid/content/Context;Ljava/util/Calendar;Ljava/util/Calendar;Ljava/util/Calendar;Lcom/senseonics/util/dialogs/DateDialogManager;Z)V
    .locals 16

    move-object/from16 v6, p0

    move-object/from16 v7, p2

    .line 1175
    new-instance v8, Landroid/app/Dialog;

    const v0, 0x7f12013c

    move-object/from16 v1, p1

    invoke-direct {v8, v1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 1176
    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0c004d

    const/4 v9, 0x0

    .line 1177
    invoke-virtual {v0, v2, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    const v0, 0x7f09010c

    .line 1179
    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lnet/simonvt/datepicker/DatePicker;

    const v0, 0x7f0903c8

    .line 1181
    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lnet/simonvt/timepicker/TimePicker;

    const/high16 v0, 0x60000

    .line 1182
    invoke-virtual {v12, v0}, Lnet/simonvt/timepicker/TimePicker;->setDescendantFocusability(I)V

    .line 1183
    invoke-static/range {p1 .. p1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    const/4 v13, 0x1

    if-eqz v0, :cond_0

    .line 1184
    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v12, v0}, Lnet/simonvt/timepicker/TimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    .line 1187
    :cond_0
    new-instance v14, Lcom/senseonics/bluetoothle/DialogUtils$28;

    move-object v0, v14

    move-object/from16 v1, p0

    move-object v2, v11

    move-object v3, v12

    move/from16 v4, p6

    move-object/from16 v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/senseonics/bluetoothle/DialogUtils$28;-><init>(Lcom/senseonics/bluetoothle/DialogUtils;Lnet/simonvt/datepicker/DatePicker;Lnet/simonvt/timepicker/TimePicker;ZLjava/util/Calendar;)V

    .line 1243
    invoke-virtual {v12, v14}, Lnet/simonvt/timepicker/TimePicker;->setOnTimeChangedListener(Lnet/simonvt/timepicker/TimePicker$OnTimeChangedListener;)V

    const v0, 0x7f0900c9

    .line 1245
    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1246
    new-instance v1, Lcom/senseonics/bluetoothle/DialogUtils$29;

    invoke-direct {v1, v6, v8}, Lcom/senseonics/bluetoothle/DialogUtils$29;-><init>(Lcom/senseonics/bluetoothle/DialogUtils;Landroid/app/Dialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0902ba

    .line 1254
    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/widget/TextView;

    .line 1255
    new-instance v15, Lcom/senseonics/bluetoothle/DialogUtils$30;

    move-object v0, v15

    move-object/from16 v1, p0

    move-object/from16 v4, p5

    move-object v5, v8

    invoke-direct/range {v0 .. v5}, Lcom/senseonics/bluetoothle/DialogUtils$30;-><init>(Lcom/senseonics/bluetoothle/DialogUtils;Lnet/simonvt/datepicker/DatePicker;Lnet/simonvt/timepicker/TimePicker;Lcom/senseonics/util/dialogs/DateDialogManager;Landroid/app/Dialog;)V

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1276
    invoke-virtual {v7, v13}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/4 v1, 0x2

    .line 1277
    invoke-virtual {v7, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x5

    .line 1278
    invoke-virtual {v7, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 1279
    invoke-virtual {v11, v0, v1, v2, v9}, Lnet/simonvt/datepicker/DatePicker;->init(IIILnet/simonvt/datepicker/DatePicker$OnDateChangedListener;)V

    const/4 v0, 0x0

    .line 1281
    invoke-virtual {v11, v0}, Lnet/simonvt/datepicker/DatePicker;->setCalendarViewShown(Z)V

    .line 1282
    invoke-virtual/range {p3 .. p3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {v11, v0, v1}, Lnet/simonvt/datepicker/DatePicker;->setMinDate(J)V

    .line 1283
    invoke-virtual/range {p4 .. p4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {v11, v0, v1}, Lnet/simonvt/datepicker/DatePicker;->setMaxDate(J)V

    const/16 v0, 0xb

    .line 1285
    invoke-virtual {v7, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v12, v0}, Lnet/simonvt/timepicker/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    const/16 v0, 0xc

    .line 1286
    invoke-virtual {v7, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v12, v0}, Lnet/simonvt/timepicker/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 1288
    invoke-virtual {v8, v10}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 1290
    invoke-direct {v6, v8}, Lcom/senseonics/bluetoothle/DialogUtils;->HideKeyboard(Landroid/app/Dialog;)V

    .line 1292
    invoke-virtual {v8}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public createNotificationDialog(Landroid/content/Context;Lcom/senseonics/util/dialogs/NotificationDialogInfo;)Landroid/app/Dialog;
    .locals 19

    move-object/from16 v13, p0

    move-object/from16 v1, p1

    move-object/from16 v0, p2

    .line 480
    invoke-virtual/range {p2 .. p2}, Lcom/senseonics/util/dialogs/NotificationDialogInfo;->getEventPoint()Lcom/senseonics/events/EventPoint;

    move-result-object v12

    .line 482
    invoke-virtual/range {p2 .. p2}, Lcom/senseonics/util/dialogs/NotificationDialogInfo;->getNotificationEventType()Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object v8

    .line 483
    invoke-virtual {v8}, Lcom/senseonics/util/TransmitterMessageCode;->getBackgroundImage()I

    move-result v9

    .line 485
    invoke-virtual {v8}, Lcom/senseonics/util/TransmitterMessageCode;->getType()I

    move-result v2

    const-string v10, ""

    if-lez v2, :cond_0

    .line 488
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object v11, v2

    goto :goto_0

    :cond_0
    move-object v11, v10

    .line 490
    :goto_0
    invoke-virtual {v8}, Lcom/senseonics/util/TransmitterMessageCode;->getTitle()I

    move-result v2

    if-lez v2, :cond_2

    .line 493
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f110342

    if-ne v2, v4, :cond_1

    .line 496
    sget v2, Lcom/senseonics/util/Utils;->currentUnknownErrorCode:I

    invoke-static {v1, v3, v2}, Lcom/senseonics/util/Utils;->replaceUnknownErrorCodeString(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    move-object v14, v2

    goto :goto_1

    :cond_1
    move-object v14, v3

    goto :goto_1

    :cond_2
    move-object v14, v10

    .line 500
    :goto_1
    iget-object v2, v13, Lcom/senseonics/bluetoothle/DialogUtils;->alertHelper:Lcom/senseonics/util/AlertHelper;

    iget-object v3, v13, Lcom/senseonics/bluetoothle/DialogUtils;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v3}, Lcom/senseonics/model/TransmitterStateModel;->getTransmitterName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12}, Lcom/senseonics/events/EventPoint;->getTimestamp()J

    move-result-wide v5

    invoke-virtual {v12}, Lcom/senseonics/events/EventPoint;->getNotes()Ljava/lang/String;

    move-result-object v7

    move-object v3, v8

    invoke-virtual/range {v2 .. v7}, Lcom/senseonics/util/AlertHelper;->getNotificationMessageText(Lcom/senseonics/util/TransmitterMessageCode;Ljava/lang/String;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 502
    invoke-virtual {v12}, Lcom/senseonics/events/EventPoint;->getEventType()Lcom/senseonics/util/Utils$EVENT_TYPE;

    move-result-object v2

    .line 505
    sget-object v3, Lcom/senseonics/util/TransmitterMessageCode;->InvalidSensorAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    if-ne v8, v3, :cond_3

    .line 506
    new-instance v2, Lcom/senseonics/bluetoothle/DialogUtils$7;

    invoke-direct {v2, v13, v0, v1}, Lcom/senseonics/bluetoothle/DialogUtils$7;-><init>(Lcom/senseonics/bluetoothle/DialogUtils;Lcom/senseonics/util/dialogs/NotificationDialogInfo;Landroid/content/Context;)V

    :goto_2
    move-object v6, v2

    goto :goto_4

    .line 522
    :cond_3
    sget-object v3, Lcom/senseonics/util/TransmitterMessageCode;->SensorStability:Lcom/senseonics/util/TransmitterMessageCode;

    if-ne v8, v3, :cond_4

    .line 523
    new-instance v2, Lcom/senseonics/bluetoothle/DialogUtils$8;

    invoke-direct {v2, v13, v0, v1}, Lcom/senseonics/bluetoothle/DialogUtils$8;-><init>(Lcom/senseonics/bluetoothle/DialogUtils;Lcom/senseonics/util/dialogs/NotificationDialogInfo;Landroid/content/Context;)V

    goto :goto_2

    .line 539
    :cond_4
    sget-object v3, Lcom/senseonics/util/TransmitterMessageCode;->SensorAwolAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    if-ne v8, v3, :cond_5

    .line 540
    new-instance v2, Lcom/senseonics/bluetoothle/DialogUtils$9;

    invoke-direct {v2, v13, v0, v1}, Lcom/senseonics/bluetoothle/DialogUtils$9;-><init>(Lcom/senseonics/bluetoothle/DialogUtils;Lcom/senseonics/util/dialogs/NotificationDialogInfo;Landroid/content/Context;)V

    goto :goto_2

    .line 556
    :cond_5
    sget-object v3, Lcom/senseonics/util/TransmitterMessageCode;->BatteryOptimization:Lcom/senseonics/util/TransmitterMessageCode;

    if-ne v8, v3, :cond_6

    .line 557
    new-instance v2, Lcom/senseonics/bluetoothle/DialogUtils$10;

    invoke-direct {v2, v13, v0, v1}, Lcom/senseonics/bluetoothle/DialogUtils$10;-><init>(Lcom/senseonics/bluetoothle/DialogUtils;Lcom/senseonics/util/dialogs/NotificationDialogInfo;Landroid/content/Context;)V

    goto :goto_2

    .line 573
    :cond_6
    sget-object v3, Lcom/senseonics/util/Utils$EVENT_TYPE;->NOTIFICATION_EVENT_BLUE:Lcom/senseonics/util/Utils$EVENT_TYPE;

    if-eq v2, v3, :cond_8

    sget-object v3, Lcom/senseonics/util/Utils$EVENT_TYPE;->NOTIFICATION_EVENT_RED:Lcom/senseonics/util/Utils$EVENT_TYPE;

    if-eq v2, v3, :cond_8

    sget-object v3, Lcom/senseonics/util/Utils$EVENT_TYPE;->NOTIFICATION_EVENT_YELLOW:Lcom/senseonics/util/Utils$EVENT_TYPE;

    if-ne v2, v3, :cond_7

    goto :goto_3

    .line 593
    :cond_7
    new-instance v2, Lcom/senseonics/bluetoothle/DialogUtils$12;

    invoke-direct {v2, v13, v0, v1}, Lcom/senseonics/bluetoothle/DialogUtils$12;-><init>(Lcom/senseonics/bluetoothle/DialogUtils;Lcom/senseonics/util/dialogs/NotificationDialogInfo;Landroid/content/Context;)V

    goto :goto_2

    .line 576
    :cond_8
    :goto_3
    new-instance v2, Lcom/senseonics/bluetoothle/DialogUtils$11;

    invoke-direct {v2, v13, v0, v1}, Lcom/senseonics/bluetoothle/DialogUtils$11;-><init>(Lcom/senseonics/bluetoothle/DialogUtils;Lcom/senseonics/util/dialogs/NotificationDialogInfo;Landroid/content/Context;)V

    goto :goto_2

    .line 612
    :goto_4
    invoke-virtual {v8}, Lcom/senseonics/util/TransmitterMessageCode;->getRightButtonText()I

    move-result v0

    if-lez v0, :cond_9

    .line 615
    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    .line 619
    :cond_9
    sget-object v0, Lcom/senseonics/util/TransmitterMessageCode;->BatteryOptimization:Lcom/senseonics/util/TransmitterMessageCode;

    const/4 v15, 0x0

    if-ne v8, v0, :cond_a

    const/4 v0, 0x1

    move/from16 v16, v0

    goto :goto_5

    :cond_a
    move/from16 v16, v15

    :goto_5
    const v0, 0x7f11022a

    .line 623
    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 624
    sget-object v2, Lcom/senseonics/util/TransmitterMessageCode;->SensorStability:Lcom/senseonics/util/TransmitterMessageCode;

    if-eq v8, v2, :cond_b

    sget-object v2, Lcom/senseonics/util/TransmitterMessageCode;->InvalidSensorAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    if-eq v8, v2, :cond_b

    sget-object v2, Lcom/senseonics/util/TransmitterMessageCode;->SensorAwolAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    if-eq v8, v2, :cond_b

    sget-object v2, Lcom/senseonics/util/TransmitterMessageCode;->BatteryOptimization:Lcom/senseonics/util/TransmitterMessageCode;

    if-ne v8, v2, :cond_c

    :cond_b
    const v0, 0x7f110223

    .line 628
    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_c
    move-object v7, v0

    .line 634
    invoke-virtual {v8}, Lcom/senseonics/util/TransmitterMessageCode;->getSubtitle()I

    move-result v17

    iget-object v0, v13, Lcom/senseonics/bluetoothle/DialogUtils;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    .line 635
    invoke-static {v1, v8, v0}, Lcom/senseonics/util/AlertHelper;->getHelpString(Landroid/content/Context;Lcom/senseonics/util/TransmitterMessageCode;Lcom/senseonics/model/TransmitterStateModel;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v9

    move-object v3, v11

    move-object v4, v14

    move-object v8, v10

    move/from16 v9, v16

    move/from16 v10, v17

    move-object/from16 v11, v18

    .line 631
    invoke-direct/range {v0 .. v12}, Lcom/senseonics/bluetoothle/DialogUtils;->showCommonNotificationDialog(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/senseonics/util/dialogs/NotificationDialogManager;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;Lcom/senseonics/events/EventPoint;)Landroid/app/Dialog;

    move-result-object v0

    .line 637
    invoke-virtual {v0, v15}, Landroid/app/Dialog;->setCancelable(Z)V

    return-object v0
.end method

.method public createNotificationDialogInfo(Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;Lcom/senseonics/events/EventPoint;Lcom/senseonics/util/TransmitterMessageCode;)V
    .locals 0

    .line 470
    invoke-virtual {p0, p2, p3}, Lcom/senseonics/bluetoothle/DialogUtils;->addAPendingNotificationAlertOrAlarm(Lcom/senseonics/events/EventPoint;Lcom/senseonics/util/TransmitterMessageCode;)V

    .line 471
    invoke-virtual {p0, p1}, Lcom/senseonics/bluetoothle/DialogUtils;->showDialogs(Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;)V

    return-void
.end method

.method public createPickerDialog(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;Lcom/senseonics/events/EventUtils$PickerManager;I)Landroid/app/Dialog;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/senseonics/util/Item;",
            ">;",
            "Lcom/senseonics/events/EventUtils$PickerManager;",
            "I)",
            "Landroid/app/Dialog;"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move/from16 v7, p5

    .line 1416
    invoke-virtual/range {v0 .. v10}, Lcom/senseonics/bluetoothle/DialogUtils;->createPickerDialog(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/senseonics/events/EventUtils$PickerManager;Lcom/senseonics/util/dialogs/DoublePickerManager;IIZZ)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public createPickerDialog(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/senseonics/events/EventUtils$PickerManager;Lcom/senseonics/util/dialogs/DoublePickerManager;IIZZ)Landroid/app/Dialog;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/senseonics/util/Item;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/senseonics/util/Item;",
            ">;",
            "Lcom/senseonics/events/EventUtils$PickerManager;",
            "Lcom/senseonics/util/dialogs/DoublePickerManager;",
            "IIZZ)",
            "Landroid/app/Dialog;"
        }
    .end annotation

    move-object v7, p0

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move/from16 v2, p7

    .line 1426
    new-instance v8, Landroid/app/Dialog;

    const v3, 0x7f12013c

    move-object v4, p1

    invoke-direct {v8, p1, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 1427
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0c00fa

    const/4 v5, 0x0

    .line 1428
    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    const v3, 0x7f0903cf

    .line 1430
    invoke-virtual {v9, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    move-object/from16 v4, p2

    .line 1431
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v3, 0x7f0902d8

    .line 1433
    invoke-virtual {v9, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lnet/simonvt/numberpicker/NumberPicker;

    .line 1434
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    const/4 v10, 0x0

    move v5, v10

    .line 1435
    :goto_0
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_0

    .line 1436
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/senseonics/util/Item;

    invoke-virtual {v6}, Lcom/senseonics/util/Item;->getValue()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1437
    :cond_0
    invoke-virtual {v3, v10}, Lnet/simonvt/numberpicker/NumberPicker;->setMinValue(I)V

    .line 1438
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    invoke-virtual {v3, v5}, Lnet/simonvt/numberpicker/NumberPicker;->setMaxValue(I)V

    .line 1439
    invoke-virtual {v3, v4}, Lnet/simonvt/numberpicker/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    const/high16 v4, 0x60000

    .line 1440
    invoke-virtual {v3, v4}, Lnet/simonvt/numberpicker/NumberPicker;->setDescendantFocusability(I)V

    .line 1441
    invoke-virtual {v3, v10}, Lnet/simonvt/numberpicker/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 1442
    invoke-virtual {v3, v2}, Lnet/simonvt/numberpicker/NumberPicker;->setValue(I)V

    const v5, 0x7f0902d9

    .line 1444
    invoke-virtual {v9, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lnet/simonvt/numberpicker/NumberPicker;

    if-eqz v1, :cond_2

    .line 1446
    invoke-virtual {v5, v10}, Lnet/simonvt/numberpicker/NumberPicker;->setVisibility(I)V

    .line 1447
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v11

    new-array v11, v11, [Ljava/lang/String;

    move v12, v10

    .line 1448
    :goto_1
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v12, v13, :cond_1

    .line 1449
    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/senseonics/util/Item;

    invoke-virtual {v13}, Lcom/senseonics/util/Item;->getValue()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 1450
    :cond_1
    invoke-virtual {v5, v10}, Lnet/simonvt/numberpicker/NumberPicker;->setMinValue(I)V

    .line 1451
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v12

    sub-int/2addr v12, v6

    invoke-virtual {v5, v12}, Lnet/simonvt/numberpicker/NumberPicker;->setMaxValue(I)V

    .line 1452
    invoke-virtual {v5, v11}, Lnet/simonvt/numberpicker/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 1453
    invoke-virtual {v5, v4}, Lnet/simonvt/numberpicker/NumberPicker;->setDescendantFocusability(I)V

    .line 1454
    invoke-virtual {v5, v10}, Lnet/simonvt/numberpicker/NumberPicker;->setWrapSelectorWheel(Z)V

    move/from16 v4, p8

    .line 1455
    invoke-virtual {v5, v4}, Lnet/simonvt/numberpicker/NumberPicker;->setValue(I)V

    :cond_2
    if-eqz p9, :cond_4

    .line 1459
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v6

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/senseonics/util/Item;

    invoke-virtual {v0}, Lcom/senseonics/util/Item;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v2, v0, :cond_3

    .line 1461
    invoke-virtual {v5, v10}, Lnet/simonvt/numberpicker/NumberPicker;->setMaxValue(I)V

    .line 1462
    :cond_3
    new-instance v4, Lcom/senseonics/bluetoothle/DialogUtils$33;

    invoke-direct {v4, p0, v0, v5, v1}, Lcom/senseonics/bluetoothle/DialogUtils$33;-><init>(Lcom/senseonics/bluetoothle/DialogUtils;ILnet/simonvt/numberpicker/NumberPicker;Ljava/util/ArrayList;)V

    invoke-virtual {v3, v4}, Lnet/simonvt/numberpicker/NumberPicker;->setOnValueChangedListener(Lnet/simonvt/numberpicker/NumberPicker$OnValueChangeListener;)V

    :cond_4
    if-eqz p10, :cond_7

    if-nez v2, :cond_5

    .line 1480
    invoke-virtual {v5, v10}, Lnet/simonvt/numberpicker/NumberPicker;->setMaxValue(I)V

    new-array v0, v6, [Ljava/lang/String;

    .line 1481
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/senseonics/util/Item;

    invoke-virtual {v2}, Lcom/senseonics/util/Item;->getValue()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v10

    invoke-virtual {v5, v0}, Lnet/simonvt/numberpicker/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 1482
    invoke-virtual {v5, v10}, Lnet/simonvt/numberpicker/NumberPicker;->setValue(I)V

    goto :goto_2

    :cond_5
    const/16 v0, 0x24

    if-ne v2, v0, :cond_6

    .line 1484
    invoke-virtual {v5, v10}, Lnet/simonvt/numberpicker/NumberPicker;->setMaxValue(I)V

    new-array v0, v6, [Ljava/lang/String;

    .line 1485
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/senseonics/util/Item;

    invoke-virtual {v2}, Lcom/senseonics/util/Item;->getValue()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v10

    invoke-virtual {v5, v0}, Lnet/simonvt/numberpicker/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 1486
    invoke-virtual {v5, v10}, Lnet/simonvt/numberpicker/NumberPicker;->setValue(I)V

    .line 1489
    :cond_6
    :goto_2
    new-instance v0, Lcom/senseonics/bluetoothle/DialogUtils$34;

    invoke-direct {v0, p0, v5, v1}, Lcom/senseonics/bluetoothle/DialogUtils$34;-><init>(Lcom/senseonics/bluetoothle/DialogUtils;Lnet/simonvt/numberpicker/NumberPicker;Ljava/util/ArrayList;)V

    invoke-virtual {v3, v0}, Lnet/simonvt/numberpicker/NumberPicker;->setOnValueChangedListener(Lnet/simonvt/numberpicker/NumberPicker$OnValueChangeListener;)V

    :cond_7
    const v0, 0x7f0902ba

    .line 1510
    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/widget/TextView;

    .line 1511
    new-instance v12, Lcom/senseonics/bluetoothle/DialogUtils$35;

    move-object v0, v12

    move-object v1, p0

    move-object/from16 v2, p5

    move-object/from16 v4, p6

    move-object v6, v8

    invoke-direct/range {v0 .. v6}, Lcom/senseonics/bluetoothle/DialogUtils$35;-><init>(Lcom/senseonics/bluetoothle/DialogUtils;Lcom/senseonics/events/EventUtils$PickerManager;Lnet/simonvt/numberpicker/NumberPicker;Lcom/senseonics/util/dialogs/DoublePickerManager;Lnet/simonvt/numberpicker/NumberPicker;Landroid/app/Dialog;)V

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0900c9

    .line 1524
    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1525
    new-instance v1, Lcom/senseonics/bluetoothle/DialogUtils$36;

    invoke-direct {v1, p0, v8}, Lcom/senseonics/bluetoothle/DialogUtils$36;-><init>(Lcom/senseonics/bluetoothle/DialogUtils;Landroid/app/Dialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1532
    invoke-virtual {v8, v9}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 1533
    invoke-virtual {v8, v10}, Landroid/app/Dialog;->setCancelable(Z)V

    return-object v8
.end method

.method public createPlacementDialog(Landroid/app/Activity;Lcom/senseonics/util/dialogs/PlacementDialogInfo;)Landroid/app/Dialog;
    .locals 7

    .line 153
    new-instance v0, Lcom/senseonics/bluetoothle/DialogUtils$1;

    invoke-direct {v0, p0, p2}, Lcom/senseonics/bluetoothle/DialogUtils$1;-><init>(Lcom/senseonics/bluetoothle/DialogUtils;Lcom/senseonics/util/dialogs/PlacementDialogInfo;)V

    const p2, 0x7f11024c

    .line 165
    invoke-virtual {p1, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    const v1, 0x7f11024b

    .line 166
    invoke-virtual {p1, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f110362

    .line 167
    invoke-virtual {p1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f110151

    .line 168
    invoke-virtual {p1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 170
    new-instance v4, Landroid/app/Dialog;

    const v5, 0x7f12013c

    invoke-direct {v4, p1, v5}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 172
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v5, 0x7f0c005d

    const/4 v6, 0x0

    .line 173
    invoke-virtual {p1, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const v5, 0x7f0903cf

    .line 175
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 176
    invoke-virtual {v5, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p2, 0x0

    .line 177
    invoke-virtual {v5, p2}, Landroid/widget/TextView;->setVisibility(I)V

    const v5, 0x7f0903af

    .line 178
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0900c9

    .line 180
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 181
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    new-instance v2, Lcom/senseonics/bluetoothle/DialogUtils$2;

    invoke-direct {v2, p0, v0, v4}, Lcom/senseonics/bluetoothle/DialogUtils$2;-><init>(Lcom/senseonics/bluetoothle/DialogUtils;Lcom/senseonics/util/dialogs/NotificationDialogManager;Landroid/app/Dialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0902ba

    .line 191
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 192
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 193
    new-instance v2, Lcom/senseonics/bluetoothle/DialogUtils$3;

    invoke-direct {v2, p0, v0, v4}, Lcom/senseonics/bluetoothle/DialogUtils$3;-><init>(Lcom/senseonics/bluetoothle/DialogUtils;Lcom/senseonics/util/dialogs/NotificationDialogManager;Landroid/app/Dialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    invoke-virtual {v4, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 202
    invoke-virtual {v4, p2}, Landroid/app/Dialog;->setCancelable(Z)V

    return-object v4
.end method

.method public createPredictiveRateAlertDialog(Landroid/content/Context;Lcom/senseonics/util/dialogs/PredictiveRateAlertDialogInfo;)Landroid/app/Dialog;
    .locals 13

    .line 406
    invoke-virtual {p2}, Lcom/senseonics/util/dialogs/PredictiveRateAlertDialogInfo;->getAlertEventPoint()Lcom/senseonics/events/AlertEventPoint;

    move-result-object v12

    .line 407
    invoke-virtual {v12}, Lcom/senseonics/events/AlertEventPoint;->getEventType()Lcom/senseonics/util/Utils$EVENT_TYPE;

    move-result-object v0

    const v1, 0x7f110021

    .line 410
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 413
    iget-object v1, p0, Lcom/senseonics/bluetoothle/DialogUtils;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getTransmitterName()Ljava/lang/String;

    move-result-object v1

    .line 415
    sget-object v2, Lcom/senseonics/util/Utils$EVENT_TYPE;->PREDICTIVE_ALERT_EVENT_FALLING:Lcom/senseonics/util/Utils$EVENT_TYPE;

    const-string v4, ""

    if-ne v0, v2, :cond_0

    .line 416
    sget-object v2, Lcom/senseonics/util/TransmitterMessageCode;->PredictiveLowAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    .line 417
    invoke-static {p1, v0}, Lcom/senseonics/util/TransmitterMessageCode;->getPredictiveAlertTitle(Landroid/content/Context;Lcom/senseonics/util/Utils$EVENT_TYPE;)Ljava/lang/String;

    move-result-object v4

    .line 418
    iget-object v5, p0, Lcom/senseonics/bluetoothle/DialogUtils;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    .line 419
    invoke-virtual {v5}, Lcom/senseonics/model/TransmitterStateModel;->getPredictiveFallingRateAlertMinuteInterval()I

    move-result v5

    .line 418
    invoke-static {p1, v0, v5, v1}, Lcom/senseonics/util/TransmitterMessageCode;->getPredictiveAlertText(Landroid/content/Context;Lcom/senseonics/util/Utils$EVENT_TYPE;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v5, v0

    goto :goto_1

    .line 421
    :cond_0
    sget-object v2, Lcom/senseonics/util/Utils$EVENT_TYPE;->PREDICTIVE_ALERT_EVENT_RISING:Lcom/senseonics/util/Utils$EVENT_TYPE;

    if-ne v0, v2, :cond_1

    .line 422
    sget-object v2, Lcom/senseonics/util/TransmitterMessageCode;->PredictiveHighAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    .line 423
    invoke-static {p1, v0}, Lcom/senseonics/util/TransmitterMessageCode;->getPredictiveAlertTitle(Landroid/content/Context;Lcom/senseonics/util/Utils$EVENT_TYPE;)Ljava/lang/String;

    move-result-object v4

    .line 424
    iget-object v5, p0, Lcom/senseonics/bluetoothle/DialogUtils;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    .line 425
    invoke-virtual {v5}, Lcom/senseonics/model/TransmitterStateModel;->getPredictiveRisingRateAlertMinuteInterval()I

    move-result v5

    .line 424
    invoke-static {p1, v0, v5, v1}, Lcom/senseonics/util/TransmitterMessageCode;->getPredictiveAlertText(Landroid/content/Context;Lcom/senseonics/util/Utils$EVENT_TYPE;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 427
    :cond_1
    sget-object v2, Lcom/senseonics/util/Utils$EVENT_TYPE;->RATE_ALERT_EVENT_FALLING:Lcom/senseonics/util/Utils$EVENT_TYPE;

    if-ne v0, v2, :cond_2

    .line 428
    sget-object v2, Lcom/senseonics/util/TransmitterMessageCode;->RateFallingAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    .line 429
    invoke-static {p1, v0}, Lcom/senseonics/util/TransmitterMessageCode;->getRateAlertTitle(Landroid/content/Context;Lcom/senseonics/util/Utils$EVENT_TYPE;)Ljava/lang/String;

    move-result-object v4

    .line 430
    iget-object v5, p0, Lcom/senseonics/bluetoothle/DialogUtils;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    .line 431
    invoke-virtual {v5}, Lcom/senseonics/model/TransmitterStateModel;->getRateAlertFallingThreshold()F

    move-result v5

    .line 430
    invoke-static {p1, v0, v5, v1}, Lcom/senseonics/util/TransmitterMessageCode;->getRateAlertText(Landroid/content/Context;Lcom/senseonics/util/Utils$EVENT_TYPE;FLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 433
    :cond_2
    sget-object v2, Lcom/senseonics/util/Utils$EVENT_TYPE;->RATE_ALERT_EVENT_RISING:Lcom/senseonics/util/Utils$EVENT_TYPE;

    if-ne v0, v2, :cond_3

    .line 434
    sget-object v2, Lcom/senseonics/util/TransmitterMessageCode;->RateRisingAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    .line 435
    invoke-static {p1, v0}, Lcom/senseonics/util/TransmitterMessageCode;->getRateAlertTitle(Landroid/content/Context;Lcom/senseonics/util/Utils$EVENT_TYPE;)Ljava/lang/String;

    move-result-object v4

    .line 436
    iget-object v5, p0, Lcom/senseonics/bluetoothle/DialogUtils;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    .line 437
    invoke-virtual {v5}, Lcom/senseonics/model/TransmitterStateModel;->getRateAlertRisingThreshold()F

    move-result v5

    .line 436
    invoke-static {p1, v0, v5, v1}, Lcom/senseonics/util/TransmitterMessageCode;->getRateAlertText(Landroid/content/Context;Lcom/senseonics/util/Utils$EVENT_TYPE;FLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    move-object v5, v4

    .line 441
    :goto_1
    new-instance v6, Lcom/senseonics/bluetoothle/DialogUtils$6;

    invoke-direct {v6, p0, p2, p1}, Lcom/senseonics/bluetoothle/DialogUtils$6;-><init>(Lcom/senseonics/bluetoothle/DialogUtils;Lcom/senseonics/util/dialogs/PredictiveRateAlertDialogInfo;Landroid/content/Context;)V

    .line 458
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f11022a

    .line 459
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    .line 460
    invoke-virtual {v2}, Lcom/senseonics/util/TransmitterMessageCode;->getSubtitle()I

    move-result v10

    iget-object p2, p0, Lcom/senseonics/bluetoothle/DialogUtils;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    .line 461
    invoke-static {p1, v2, p2}, Lcom/senseonics/util/AlertHelper;->getHelpString(Landroid/content/Context;Lcom/senseonics/util/TransmitterMessageCode;Lcom/senseonics/model/TransmitterStateModel;)Ljava/lang/String;

    move-result-object v11

    const v2, 0x7f0801cd

    const-string v8, ""

    move-object v0, p0

    move-object v1, p1

    .line 457
    invoke-direct/range {v0 .. v12}, Lcom/senseonics/bluetoothle/DialogUtils;->showCommonNotificationDialog(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/senseonics/util/dialogs/NotificationDialogManager;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;Lcom/senseonics/events/EventPoint;)Landroid/app/Dialog;

    move-result-object p1

    const/4 p2, 0x0

    .line 463
    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setCancelable(Z)V

    return-object p1
.end method

.method public createPredictiveRateAlertDialogInfo(Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;Lcom/senseonics/events/AlertEventPoint;I)V
    .locals 0

    .line 394
    invoke-virtual {p0, p2, p3}, Lcom/senseonics/bluetoothle/DialogUtils;->addAPendingRateOrPredictiveRateAlertDialog(Lcom/senseonics/events/AlertEventPoint;I)V

    .line 395
    invoke-virtual {p0, p1}, Lcom/senseonics/bluetoothle/DialogUtils;->showDialogs(Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;)V

    return-void
.end method

.method public createTimePickerDialog(Landroid/content/Context;IILjava/lang/String;Lcom/senseonics/util/dialogs/TimeDialogManager;)Landroid/app/Dialog;
    .locals 4

    .line 1300
    new-instance v0, Landroid/app/Dialog;

    const v1, 0x7f12013c

    invoke-direct {v0, p1, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 1301
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c0124

    const/4 v3, 0x0

    .line 1302
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0903c8

    .line 1304
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lnet/simonvt/timepicker/TimePicker;

    const/high16 v3, 0x60000

    .line 1305
    invoke-virtual {v2, v3}, Lnet/simonvt/timepicker/TimePicker;->setDescendantFocusability(I)V

    .line 1306
    invoke-static {p1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 1307
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v2, p1}, Lnet/simonvt/timepicker/TimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    .line 1310
    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v2, p1}, Lnet/simonvt/timepicker/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 1311
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v2, p1}, Lnet/simonvt/timepicker/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    const p1, 0x7f0903cf

    .line 1313
    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 1314
    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f0900c9

    .line 1316
    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 1317
    new-instance p2, Lcom/senseonics/bluetoothle/DialogUtils$31;

    invoke-direct {p2, p0, v0}, Lcom/senseonics/bluetoothle/DialogUtils$31;-><init>(Lcom/senseonics/bluetoothle/DialogUtils;Landroid/app/Dialog;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0902ba

    .line 1325
    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 1326
    new-instance p2, Lcom/senseonics/bluetoothle/DialogUtils$32;

    invoke-direct {p2, p0, v2, p5, v0}, Lcom/senseonics/bluetoothle/DialogUtils$32;-><init>(Lcom/senseonics/bluetoothle/DialogUtils;Lnet/simonvt/timepicker/TimePicker;Lcom/senseonics/util/dialogs/TimeDialogManager;Landroid/app/Dialog;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1339
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 1341
    invoke-direct {p0, v0}, Lcom/senseonics/bluetoothle/DialogUtils;->HideKeyboard(Landroid/app/Dialog;)V

    return-object v0
.end method

.method public createWarningDialog(Landroid/content/Context;Lcom/senseonics/util/dialogs/WarningDialogInfo;)Landroid/app/Dialog;
    .locals 1

    const/4 v0, 0x0

    .line 643
    invoke-virtual {p0, p1, p2, v0}, Lcom/senseonics/bluetoothle/DialogUtils;->createWarningDialog(Landroid/content/Context;Lcom/senseonics/util/dialogs/WarningDialogInfo;Landroid/view/View$OnClickListener;)Landroid/app/Dialog;

    move-result-object p1

    return-object p1
.end method

.method public createWarningDialog(Landroid/content/Context;Lcom/senseonics/util/dialogs/WarningDialogInfo;Landroid/view/View$OnClickListener;)Landroid/app/Dialog;
    .locals 5

    .line 648
    invoke-virtual {p2}, Lcom/senseonics/util/dialogs/WarningDialogInfo;->getImageResId()I

    move-result v0

    .line 649
    invoke-virtual {p2}, Lcom/senseonics/util/dialogs/WarningDialogInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    .line 650
    invoke-virtual {p2}, Lcom/senseonics/util/dialogs/WarningDialogInfo;->getText()Ljava/lang/String;

    move-result-object p2

    .line 652
    new-instance v2, Landroid/app/Dialog;

    const v3, 0x7f12013c

    invoke-direct {v2, p1, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 653
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v3, 0x7f0c006b

    const/4 v4, 0x0

    .line 654
    invoke-virtual {p1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    const v4, 0x7f0903d2

    .line 657
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 658
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 659
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    const v1, 0x7f0901cb

    .line 663
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 664
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 665
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1
    const v0, 0x7f0903af

    .line 668
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 669
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p2, 0x7f0902ba

    .line 671
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    if-nez p3, :cond_2

    .line 673
    new-instance p3, Lcom/senseonics/bluetoothle/DialogUtils$13;

    invoke-direct {p3, p0, v2}, Lcom/senseonics/bluetoothle/DialogUtils$13;-><init>(Lcom/senseonics/bluetoothle/DialogUtils;Landroid/app/Dialog;)V

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 681
    :cond_2
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 684
    :goto_0
    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 685
    invoke-virtual {v2, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    return-object v2
.end method

.method public fireDoNotDisturbAlertDialog(Landroid/content/Context;Z)V
    .locals 8

    .line 879
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->showDndIcon()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    const v3, 0x7f1100e2

    const v4, 0x7f1100e1

    const v5, 0x7f11022a

    const v6, 0x7f1102d7

    .line 881
    const-class v7, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedActivity;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/senseonics/bluetoothle/DialogUtils;->createDoNotDisturbAlertDialog(Landroid/content/Context;IIIILjava/lang/Class;)V

    :cond_0
    return-void
.end method

.method public fireTempProfileTurnedOffPopup(Landroid/content/Context;Ljava/lang/Boolean;)V
    .locals 7

    .line 812
    iget-object v0, p0, Lcom/senseonics/bluetoothle/DialogUtils;->tempProfileManager:Lcom/senseonics/bluetoothle/TempProfileManager;

    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/TempProfileManager;->getTempProfileHasPendingPopup()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 813
    iget-object v0, p0, Lcom/senseonics/bluetoothle/DialogUtils;->tempProfileManager:Lcom/senseonics/bluetoothle/TempProfileManager;

    invoke-virtual {v0, v2}, Lcom/senseonics/bluetoothle/TempProfileManager;->setTempProfileHasPendingPopup(Z)V

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-nez v1, :cond_1

    .line 817
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_2

    :cond_1
    const v2, 0x7f110309

    const v3, 0x7f110308

    const v4, 0x7f11022a

    const v5, 0x7f110307

    .line 818
    const-class v6, Lcom/senseonics/gen12androidapp/TempGlucoseProfileActivity;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/senseonics/bluetoothle/DialogUtils;->createTempProfileTurnedOffPopup(Landroid/content/Context;IIIILjava/lang/Class;)V

    :cond_2
    return-void
.end method

.method public fireUpdateAppPopup(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7

    const v2, 0x7f11002d

    const v3, 0x7f11002c

    const v4, 0x7f110212

    const v5, 0x7f110362

    move-object v0, p0

    move-object v1, p1

    move-object v6, p2

    .line 740
    invoke-direct/range {v0 .. v6}, Lcom/senseonics/bluetoothle/DialogUtils;->createUpdateAppPopup(Landroid/content/Context;IIIILjava/lang/String;)V

    return-void
.end method

.method public getDecimalsBetween(III)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Ljava/util/ArrayList<",
            "Lcom/senseonics/util/Item;",
            ">;"
        }
    .end annotation

    .line 1392
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    if-gt p1, p2, :cond_0

    .line 1394
    new-instance v1, Lcom/senseonics/util/Item;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/senseonics/util/Item;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr p1, p3

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getGlucoseLevels(FFF)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFF)",
            "Ljava/util/ArrayList<",
            "Lcom/senseonics/util/Item;",
            ">;"
        }
    .end annotation

    .line 1356
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    float-to-double v0, p1

    float-to-double p1, p2

    :goto_0
    cmpg-double v2, v0, p1

    const/4 v3, 0x0

    const-string v4, "%.1f"

    const/4 v5, 0x1

    if-gez v2, :cond_0

    .line 1362
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static {v2, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1363
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "formatted:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "getGlucoseLevels"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1364
    new-instance v3, Lcom/senseonics/util/Item;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-direct {v3, v4, v2}, Lcom/senseonics/util/Item;-><init>(ILjava/lang/String;)V

    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-wide v2, 0x3fb999999999999aL    # 0.1

    add-double/2addr v0, v2

    goto :goto_0

    .line 1367
    :cond_0
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 1368
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v5

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/senseonics/util/Item;

    invoke-virtual {v0}, Lcom/senseonics/util/Item;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 1369
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v2, v3

    invoke-static {v1, v4, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1370
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1371
    new-instance v0, Lcom/senseonics/util/Item;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    aput-object p1, v5, v3

    invoke-static {v2, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/senseonics/util/Item;-><init>(ILjava/lang/String;)V

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object p3
.end method

.method public getGlucoseLevels(III)Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Ljava/util/ArrayList<",
            "Lcom/senseonics/util/Item;",
            ">;"
        }
    .end annotation

    .line 1352
    invoke-virtual {p0, p1, p2, p3}, Lcom/senseonics/bluetoothle/DialogUtils;->getNumbersBetween(III)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public getGlucoseValueMg(Ljava/lang/String;)I
    .locals 1

    .line 1400
    invoke-virtual {p0, p1}, Lcom/senseonics/bluetoothle/DialogUtils;->isFloat(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1401
    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {p1}, Lcom/senseonics/util/Convert;->MLConvertMmolToMg(F)I

    move-result p1

    return p1

    .line 1403
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public getNumbersBetween(III)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Ljava/util/ArrayList<",
            "Lcom/senseonics/util/Item;",
            ">;"
        }
    .end annotation

    .line 1378
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    if-gt p1, p2, :cond_0

    .line 1380
    new-instance v1, Lcom/senseonics/util/Item;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/senseonics/util/Item;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr p1, p3

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getNumbersBetweenWithSuffix(IIILjava/lang/String;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/senseonics/util/Item;",
            ">;"
        }
    .end annotation

    .line 1385
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    if-gt p1, p2, :cond_0

    .line 1387
    new-instance v1, Lcom/senseonics/util/Item;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/senseonics/util/Item;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr p1, p3

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public isFloat(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "."

    .line 1407
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public removeDialogs()V
    .locals 7

    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removing dialogs, staring size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/senseonics/bluetoothle/DialogUtils;->customDialogs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DialogUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 228
    iget-object v2, p0, Lcom/senseonics/bluetoothle/DialogUtils;->customDialogs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/senseonics/util/dialogs/CustomDialogInfo;

    .line 229
    invoke-virtual {v3}, Lcom/senseonics/util/dialogs/CustomDialogInfo;->getDialog()Landroid/app/Dialog;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 230
    invoke-virtual {v4}, Landroid/app/Dialog;->isShowing()Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    :cond_0
    const-string v3, "dismiss showing dialog "

    .line 238
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    invoke-virtual {v4}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz v4, :cond_2

    .line 232
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " preserving dialog, is showing: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Landroid/app/Dialog;->isShowing()Z

    move-result v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_2
    const-string v4, "preserve pending dialaog, it\'s null "

    .line 234
    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    :goto_2
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 243
    :cond_3
    iget-object v1, p0, Lcom/senseonics/bluetoothle/DialogUtils;->customDialogs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 244
    iget-object v1, p0, Lcom/senseonics/bluetoothle/DialogUtils;->customDialogs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 246
    iget-object v0, p0, Lcom/senseonics/bluetoothle/DialogUtils;->moreThanMaxAlertDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_4

    .line 247
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_4
    return-void
.end method

.method public removeOtherDialogs()V
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/senseonics/bluetoothle/DialogUtils;->moreThanMaxAlertDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/senseonics/bluetoothle/DialogUtils;->moreThanMaxAlertDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/senseonics/bluetoothle/DialogUtils;->doNotDisturbAlertDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 212
    iget-object v0, p0, Lcom/senseonics/bluetoothle/DialogUtils;->doNotDisturbAlertDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 215
    :cond_1
    iget-object v0, p0, Lcom/senseonics/bluetoothle/DialogUtils;->tempProfileAlertDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 216
    iget-object v0, p0, Lcom/senseonics/bluetoothle/DialogUtils;->tempProfileAlertDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 219
    :cond_2
    iget-object v0, p0, Lcom/senseonics/bluetoothle/DialogUtils;->appUpdateDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 220
    iget-object v0, p0, Lcom/senseonics/bluetoothle/DialogUtils;->appUpdateDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_3
    return-void
.end method

.method public showDialogs(Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;)V
    .locals 10

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "---------------"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/senseonics/bluetoothle/DialogUtils;->customDialogs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "^^^^^^^^^^^^^^^^^^^^^^^^^^"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DIALOGS SIZE"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object v0, p0, Lcom/senseonics/bluetoothle/DialogUtils;->customDialogs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_7

    .line 108
    iget-object v0, p0, Lcom/senseonics/bluetoothle/DialogUtils;->customDialogs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x2

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/senseonics/util/dialogs/CustomDialogInfo;

    .line 110
    invoke-virtual {v1}, Lcom/senseonics/util/dialogs/CustomDialogInfo;->getDialog()Landroid/app/Dialog;

    move-result-object v3

    const-string v4, "DialogUtils"

    if-eqz v3, :cond_0

    :try_start_0
    const-string v3, "try to dismiss existing dialog ---- "

    .line 112
    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    invoke-virtual {v1}, Lcom/senseonics/util/dialogs/CustomDialogInfo;->getDialog()Landroid/app/Dialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string v3, "Close dialog ---- "

    .line 115
    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :cond_0
    :goto_1
    sget-object v3, Lcom/senseonics/bluetoothle/DialogUtils$37;->$SwitchMap$com$senseonics$util$dialogs$CustomDialogInfo$DIALOG_TYPE:[I

    invoke-virtual {v1}, Lcom/senseonics/util/dialogs/CustomDialogInfo;->getDialogType()Lcom/senseonics/util/dialogs/CustomDialogInfo$DIALOG_TYPE;

    move-result-object v5

    invoke-virtual {v5}, Lcom/senseonics/util/dialogs/CustomDialogInfo$DIALOG_TYPE;->ordinal()I

    move-result v5

    aget v3, v3, v5

    const/4 v5, 0x1

    if-eq v3, v5, :cond_4

    if-eq v3, v2, :cond_3

    const/4 v2, 0x3

    if-eq v3, v2, :cond_2

    const/4 v2, 0x4

    if-eq v3, v2, :cond_1

    goto :goto_2

    .line 129
    :cond_1
    move-object v2, v1

    check-cast v2, Lcom/senseonics/util/dialogs/NotificationDialogInfo;

    invoke-virtual {p0, p1, v2}, Lcom/senseonics/bluetoothle/DialogUtils;->createNotificationDialog(Landroid/content/Context;Lcom/senseonics/util/dialogs/NotificationDialogInfo;)Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/senseonics/util/dialogs/CustomDialogInfo;->setDialog(Landroid/app/Dialog;)V

    goto :goto_2

    .line 126
    :cond_2
    move-object v2, v1

    check-cast v2, Lcom/senseonics/util/dialogs/PredictiveRateAlertDialogInfo;

    invoke-virtual {p0, p1, v2}, Lcom/senseonics/bluetoothle/DialogUtils;->createPredictiveRateAlertDialog(Landroid/content/Context;Lcom/senseonics/util/dialogs/PredictiveRateAlertDialogInfo;)Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/senseonics/util/dialogs/CustomDialogInfo;->setDialog(Landroid/app/Dialog;)V

    goto :goto_2

    .line 123
    :cond_3
    move-object v2, v1

    check-cast v2, Lcom/senseonics/util/dialogs/CalibrateDialogInfo;

    invoke-virtual {p1}, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->provideCalibrationDialogManager()Lcom/senseonics/util/dialogs/NotificationDialogManager;

    move-result-object v3

    invoke-virtual {p0, p1, v2, v3}, Lcom/senseonics/bluetoothle/DialogUtils;->createCalibrateDialog(Landroid/content/Context;Lcom/senseonics/util/dialogs/CalibrateDialogInfo;Lcom/senseonics/util/dialogs/NotificationDialogManager;)Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/senseonics/util/dialogs/CustomDialogInfo;->setDialog(Landroid/app/Dialog;)V

    goto :goto_2

    .line 120
    :cond_4
    move-object v2, v1

    check-cast v2, Lcom/senseonics/util/dialogs/AlertDialogInfo;

    invoke-virtual {p0, p1, v2}, Lcom/senseonics/bluetoothle/DialogUtils;->createAlertDialog(Landroid/content/Context;Lcom/senseonics/util/dialogs/AlertDialogInfo;)Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/senseonics/util/dialogs/CustomDialogInfo;->setDialog(Landroid/app/Dialog;)V

    .line 134
    :goto_2
    invoke-virtual {v1}, Lcom/senseonics/util/dialogs/CustomDialogInfo;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    .line 135
    invoke-virtual {v2}, Landroid/app/Dialog;->isShowing()Z

    move-result v3

    if-nez v3, :cond_5

    .line 136
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "show dialog --- "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    .line 139
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "hide/show "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    invoke-virtual {v2}, Landroid/app/Dialog;->hide()V

    .line 141
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    .line 145
    :cond_6
    iget-object v0, p0, Lcom/senseonics/bluetoothle/DialogUtils;->customDialogs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, v2, :cond_7

    const v5, 0x7f110024

    const v6, 0x7f1101dc

    const v7, 0x7f110355

    const v8, 0x7f1100dd

    .line 146
    const-class v9, Lcom/senseonics/gen12androidapp/NotificationsActivity;

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v3 .. v9}, Lcom/senseonics/bluetoothle/DialogUtils;->createMoreThanMaxAlertDialog(Landroid/content/Context;IIIILjava/lang/Class;)V

    :cond_7
    return-void
.end method
