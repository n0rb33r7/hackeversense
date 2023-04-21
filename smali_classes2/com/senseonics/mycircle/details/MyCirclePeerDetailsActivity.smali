.class public Lcom/senseonics/mycircle/details/MyCirclePeerDetailsActivity;
.super Lcom/senseonics/gen12androidapp/BaseMVPActivity;
.source "MyCirclePeerDetailsActivity.java"

# interfaces
.implements Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter$PeerDetailsView;


# static fields
.field public static final PEER_ID_KEY:Ljava/lang/String; = "PEER_ID_KEY"

.field public static final PEER_KEY:Ljava/lang/String; = "PEER_KEY"


# instance fields
.field email:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090160
    .end annotation
.end field

.field email_label:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090161
    .end annotation
.end field

.field image_name_container:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09040b
    .end annotation
.end field

.field invitationDate:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0901de
    .end annotation
.end field

.field invitations_sent_label:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0901df
    .end annotation
.end field

.field nicknameValue:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0902a0
    .end annotation
.end field

.field nickname_label:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0902a1
    .end annotation
.end field

.field presenter:Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field removeButton:Landroid/widget/Button;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090303
    .end annotation
.end field

.field shareMyData:Landroid/widget/Switch;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09033b
    .end annotation
.end field

.field shareMyData_label:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09033c
    .end annotation
.end field

.field switchContainer:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090378
    .end annotation
.end field

.field userImage:Lde/hdodenhof/circleimageview/CircleImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09040a
    .end annotation
.end field

.field user_display_name:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090409
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/BaseMVPActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected attachToPresenter()V
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsActivity;->presenter:Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter;

    invoke-virtual {v0, p0}, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter;->attach(Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter$PeerDetailsView;)V

    return-void
.end method

.method protected detachFromPresenter()V
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsActivity;->presenter:Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter;

    invoke-virtual {v0}, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsPresenter;->detach()V

    return-void
.end method

.method public getPeerEmailFromIntent()Ljava/lang/String;
    .locals 2

    .line 108
    invoke-virtual {p0}, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "PEER_KEY"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPeerIdFromIntent()I
    .locals 3

    .line 113
    invoke-virtual {p0}, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "PEER_ID_KEY"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public initViews(Lcom/senseonics/mycircle/model/MyCirclePeerModel;Landroid/widget/CompoundButton$OnCheckedChangeListener;Landroid/view/View$OnClickListener;)V
    .locals 5

    .line 78
    invoke-virtual {p1}, Lcom/senseonics/mycircle/model/MyCirclePeerModel;->isMember()Z

    move-result v0

    .line 79
    iget-object v1, p0, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsActivity;->image_name_container:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz v0, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 80
    iget-object v1, p0, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsActivity;->switchContainer:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 82
    iget-object v0, p0, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsActivity;->nickname_label:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f110211

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v0, p0, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsActivity;->email_label:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f1100f3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    iget-object v0, p0, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsActivity;->shareMyData_label:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f1102d9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    iget-object v0, p0, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsActivity;->invitations_sent_label:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f11017c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    invoke-virtual {p1}, Lcom/senseonics/mycircle/model/MyCirclePeerModel;->getNickname()Ljava/lang/String;

    move-result-object v0

    .line 88
    invoke-static {v0}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 89
    iget-object v1, p0, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsActivity;->nicknameValue:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    :cond_2
    iget-object v0, p0, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsActivity;->email:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/senseonics/mycircle/model/MyCirclePeerModel;->getEmailAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    iget-object v0, p0, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsActivity;->user_display_name:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/senseonics/mycircle/model/MyCirclePeerModel;->getMemberName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    iget-object v0, p0, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsActivity;->invitationDate:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/senseonics/mycircle/model/MyCirclePeerModel;->getInvitedDate()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/senseonics/util/TimeProvider;->formatDMSDateString(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    iget-object v0, p0, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsActivity;->shareMyData:Landroid/widget/Switch;

    invoke-static {v0}, Lcom/senseonics/util/AccountConfigurations;->setSwitchStyle(Landroid/widget/Switch;)V

    .line 98
    iget-object v0, p0, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsActivity;->shareMyData:Landroid/widget/Switch;

    invoke-virtual {p1}, Lcom/senseonics/mycircle/model/MyCirclePeerModel;->isSharing()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 99
    iget-object v0, p0, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsActivity;->shareMyData:Landroid/widget/Switch;

    invoke-virtual {v0, p2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 101
    iget-object p2, p0, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsActivity;->removeButton:Landroid/widget/Button;

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    invoke-virtual {p1}, Lcom/senseonics/mycircle/model/MyCirclePeerModel;->getProfileImage()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsActivity;->userImage:Lde/hdodenhof/circleimageview/CircleImageView;

    invoke-static {p0, p1, p2}, Lcom/senseonics/view/GlideHelper;->loadImageIntoView(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 63
    invoke-super {p0, p1}, Lcom/senseonics/gen12androidapp/BaseMVPActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c002e

    .line 64
    invoke-virtual {p0, p1}, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsActivity;->initializeLayout(I)Landroid/view/View;

    .line 66
    invoke-virtual {p0}, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1101cc

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsActivity;->configureNaviBar(ILjava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    return-void
.end method

.method public onPeerRemoved()V
    .locals 0

    .line 123
    invoke-virtual {p0}, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsActivity;->finish()V

    return-void
.end method

.method public revertShareSwitchSelection(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 2

    .line 133
    iget-object v0, p0, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsActivity;->shareMyData:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 134
    iget-object v0, p0, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsActivity;->shareMyData:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 135
    iget-object v0, p0, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsActivity;->shareMyData:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method public setRemoveButtonEnabled(Z)V
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/senseonics/mycircle/details/MyCirclePeerDetailsActivity;->removeButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method
