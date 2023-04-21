.class public abstract Lcom/senseonics/fragments/BaseStatisticsFragment;
.super Lcom/senseonics/fragments/BaseFragment;
.source "BaseStatisticsFragment.java"


# instance fields
.field protected contentLayout:Landroid/widget/LinearLayout;

.field protected databaseManager:Lcom/senseonics/db/DatabaseManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected emailer:Lcom/senseonics/util/Emailer;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected noStatisticsLayout:Landroid/widget/RelativeLayout;

.field protected progressDialog:Landroid/app/ProgressDialog;

.field protected reportTabSelectionHandler:Lcom/senseonics/gen12androidapp/ReportTabSelectionHandler;

.field protected selectedState:[I

.field protected tab1Layout:Landroid/widget/LinearLayout;

.field protected tab1Name:Ljava/lang/String;

.field protected tab1Text:Landroid/widget/TextView;

.field protected tab2Layout:Landroid/widget/LinearLayout;

.field protected tab2Name:Ljava/lang/String;

.field protected tab2Text:Landroid/widget/TextView;

.field protected tab3Layout:Landroid/widget/LinearLayout;

.field protected tab3Name:Ljava/lang/String;

.field protected tab3Text:Landroid/widget/TextView;

.field protected tab4Layout:Landroid/widget/LinearLayout;

.field protected tab4Name:Ljava/lang/String;

.field protected tab4Text:Landroid/widget/TextView;

.field protected tab5Layout:Landroid/widget/LinearLayout;

.field protected tab5Name:Ljava/lang/String;

.field protected tab5Text:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/senseonics/fragments/BaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public activateDeactivateTabText(I)V
    .locals 3

    .line 222
    invoke-virtual {p0}, Lcom/senseonics/fragments/BaseStatisticsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f060073

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    .line 223
    invoke-virtual {p0}, Lcom/senseonics/fragments/BaseStatisticsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f060037

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    if-eqz p1, :cond_4

    const/4 v2, 0x1

    if-eq p1, v2, :cond_3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_2

    const/4 v2, 0x3

    if-eq p1, v2, :cond_1

    const/4 v2, 0x4

    if-eq p1, v2, :cond_0

    goto/16 :goto_0

    .line 259
    :cond_0
    iget-object p1, p0, Lcom/senseonics/fragments/BaseStatisticsFragment;->tab5Text:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 261
    iget-object p1, p0, Lcom/senseonics/fragments/BaseStatisticsFragment;->tab1Text:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 262
    iget-object p1, p0, Lcom/senseonics/fragments/BaseStatisticsFragment;->tab2Text:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 263
    iget-object p1, p0, Lcom/senseonics/fragments/BaseStatisticsFragment;->tab3Text:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 264
    iget-object p1, p0, Lcom/senseonics/fragments/BaseStatisticsFragment;->tab4Text:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 251
    :cond_1
    iget-object p1, p0, Lcom/senseonics/fragments/BaseStatisticsFragment;->tab4Text:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 253
    iget-object p1, p0, Lcom/senseonics/fragments/BaseStatisticsFragment;->tab1Text:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 254
    iget-object p1, p0, Lcom/senseonics/fragments/BaseStatisticsFragment;->tab2Text:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 255
    iget-object p1, p0, Lcom/senseonics/fragments/BaseStatisticsFragment;->tab3Text:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 256
    iget-object p1, p0, Lcom/senseonics/fragments/BaseStatisticsFragment;->tab5Text:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 243
    :cond_2
    iget-object p1, p0, Lcom/senseonics/fragments/BaseStatisticsFragment;->tab3Text:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 245
    iget-object p1, p0, Lcom/senseonics/fragments/BaseStatisticsFragment;->tab1Text:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 246
    iget-object p1, p0, Lcom/senseonics/fragments/BaseStatisticsFragment;->tab2Text:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 247
    iget-object p1, p0, Lcom/senseonics/fragments/BaseStatisticsFragment;->tab4Text:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 248
    iget-object p1, p0, Lcom/senseonics/fragments/BaseStatisticsFragment;->tab5Text:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 235
    :cond_3
    iget-object p1, p0, Lcom/senseonics/fragments/BaseStatisticsFragment;->tab2Text:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 237
    iget-object p1, p0, Lcom/senseonics/fragments/BaseStatisticsFragment;->tab1Text:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 238
    iget-object p1, p0, Lcom/senseonics/fragments/BaseStatisticsFragment;->tab3Text:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 239
    iget-object p1, p0, Lcom/senseonics/fragments/BaseStatisticsFragment;->tab4Text:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 240
    iget-object p1, p0, Lcom/senseonics/fragments/BaseStatisticsFragment;->tab5Text:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 227
    :cond_4
    iget-object p1, p0, Lcom/senseonics/fragments/BaseStatisticsFragment;->tab1Text:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 229
    iget-object p1, p0, Lcom/senseonics/fragments/BaseStatisticsFragment;->tab2Text:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 230
    iget-object p1, p0, Lcom/senseonics/fragments/BaseStatisticsFragment;->tab3Text:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 231
    iget-object p1, p0, Lcom/senseonics/fragments/BaseStatisticsFragment;->tab4Text:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 232
    iget-object p1, p0, Lcom/senseonics/fragments/BaseStatisticsFragment;->tab5Text:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    return-void
.end method

.method protected amIEmpty()Z
    .locals 1

    .line 300
    iget-object v0, p0, Lcom/senseonics/fragments/BaseStatisticsFragment;->noStatisticsLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public clearAllButtonStates()V
    .locals 3

    .line 271
    iget-object v0, p0, Lcom/senseonics/fragments/BaseStatisticsFragment;->selectedState:[I

    const/4 v1, 0x0

    aput v1, v0, v1

    .line 272
    iget-object v0, p0, Lcom/senseonics/fragments/BaseStatisticsFragment;->tab1Layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 274
    iget-object v0, p0, Lcom/senseonics/fragments/BaseStatisticsFragment;->selectedState:[I

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 275
    iget-object v0, p0, Lcom/senseonics/fragments/BaseStatisticsFragment;->tab2Layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 277
    iget-object v0, p0, Lcom/senseonics/fragments/BaseStatisticsFragment;->selectedState:[I

    const/4 v2, 0x2

    aput v1, v0, v2

    .line 278
    iget-object v0, p0, Lcom/senseonics/fragments/BaseStatisticsFragment;->tab3Layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 280
    iget-object v0, p0, Lcom/senseonics/fragments/BaseStatisticsFragment;->selectedState:[I

    const/4 v2, 0x3

    aput v1, v0, v2

    .line 281
    iget-object v0, p0, Lcom/senseonics/fragments/BaseStatisticsFragment;->tab4Layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 283
    iget-object v0, p0, Lcom/senseonics/fragments/BaseStatisticsFragment;->selectedState:[I

    const/4 v2, 0x4

    aput v1, v0, v2

    .line 284
    iget-object v0, p0, Lcom/senseonics/fragments/BaseStatisticsFragment;->tab5Layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    return-void
.end method

.method protected createProgressDialogIfNeeded()V
    .locals 3

    .line 65
    iget-object v0, p0, Lcom/senseonics/fragments/BaseStatisticsFragment;->progressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/senseonics/fragments/BaseStatisticsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f1202ee

    invoke-direct {v0, v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/senseonics/fragments/BaseStatisticsFragment;->progressDialog:Landroid/app/ProgressDialog;

    .line 67
    invoke-virtual {p0}, Lcom/senseonics/fragments/BaseStatisticsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f08009b

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 68
    iget-object v0, p0, Lcom/senseonics/fragments/BaseStatisticsFragment;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    :cond_0
    return-void
.end method

.method protected dismissProgressDialogIfNeeded()V
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/senseonics/fragments/BaseStatisticsFragment;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/senseonics/fragments/BaseStatisticsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/senseonics/fragments/BaseStatisticsFragment;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/senseonics/fragments/BaseStatisticsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/senseonics/fragments/BaseStatisticsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/senseonics/fragments/BaseStatisticsFragment;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public formShareEmail()V
    .locals 4

    .line 288
    invoke-virtual {p0}, Lcom/senseonics/fragments/BaseStatisticsFragment;->amIEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/senseonics/fragments/BaseStatisticsFragment;->emailer:Lcom/senseonics/util/Emailer;

    invoke-virtual {p0}, Lcom/senseonics/fragments/BaseStatisticsFragment;->getEmailTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/senseonics/fragments/BaseStatisticsFragment;->getEmailBody()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/senseonics/fragments/BaseStatisticsFragment;->contentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1, v2, v3}, Lcom/senseonics/util/Emailer;->formShareEmail(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;)V

    goto :goto_0

    :cond_0
    const-string v0, "BaseStatisticsFragment"

    const-string v1, "not sharing"

    .line 291
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method protected abstract getEmailBody()Ljava/lang/String;
.end method

.method protected abstract getEmailTitle()Ljava/lang/String;
.end method

.method protected getLayoutForTabId(I)Landroid/widget/LinearLayout;
    .locals 2

    .line 180
    iget-object v0, p0, Lcom/senseonics/fragments/BaseStatisticsFragment;->tab1Layout:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_4

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/senseonics/fragments/BaseStatisticsFragment;->tab5Layout:Landroid/widget/LinearLayout;

    goto :goto_0

    .line 195
    :cond_1
    iget-object v0, p0, Lcom/senseonics/fragments/BaseStatisticsFragment;->tab4Layout:Landroid/widget/LinearLayout;

    goto :goto_0

    .line 191
    :cond_2
    iget-object v0, p0, Lcom/senseonics/fragments/BaseStatisticsFragment;->tab3Layout:Landroid/widget/LinearLayout;

    goto :goto_0

    .line 187
    :cond_3
    iget-object v0, p0, Lcom/senseonics/fragments/BaseStatisticsFragment;->tab2Layout:Landroid/widget/LinearLayout;

    :cond_4
    :goto_0
    return-object v0
.end method

.method public hasData()Z
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/senseonics/fragments/BaseStatisticsFragment;->noStatisticsLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected initTabs(Landroid/view/View;)V
    .locals 2

    const v0, 0x7f090379

    .line 122
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/senseonics/fragments/BaseStatisticsFragment;->tab1Layout:Landroid/widget/LinearLayout;

    const v0, 0x7f09037a

    .line 123
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/senseonics/fragments/BaseStatisticsFragment;->tab1Text:Landroid/widget/TextView;

    .line 124
    iget-object v1, p0, Lcom/senseonics/fragments/BaseStatisticsFragment;->tab1Name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f09037b

    .line 126
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/senseonics/fragments/BaseStatisticsFragment;->tab2Layout:Landroid/widget/LinearLayout;

    const v0, 0x7f09037c

    .line 127
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/senseonics/fragments/BaseStatisticsFragment;->tab2Text:Landroid/widget/TextView;

    .line 128
    iget-object v1, p0, Lcom/senseonics/fragments/BaseStatisticsFragment;->tab2Name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f09037d

    .line 130
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/senseonics/fragments/BaseStatisticsFragment;->tab3Layout:Landroid/widget/LinearLayout;

    const v0, 0x7f09037e

    .line 131
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/senseonics/fragments/BaseStatisticsFragment;->tab3Text:Landroid/widget/TextView;

    .line 132
    iget-object v1, p0, Lcom/senseonics/fragments/BaseStatisticsFragment;->tab3Name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f09037f

    .line 134
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/senseonics/fragments/BaseStatisticsFragment;->tab4Layout:Landroid/widget/LinearLayout;

    const v0, 0x7f090380

    .line 135
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/senseonics/fragments/BaseStatisticsFragment;->tab4Text:Landroid/widget/TextView;

    .line 136
    iget-object v1, p0, Lcom/senseonics/fragments/BaseStatisticsFragment;->tab4Name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f090381

    .line 138
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/senseonics/fragments/BaseStatisticsFragment;->tab5Layout:Landroid/widget/LinearLayout;

    const v0, 0x7f090382

    .line 139
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/senseonics/fragments/BaseStatisticsFragment;->tab5Text:Landroid/widget/TextView;

    .line 140
    iget-object v0, p0, Lcom/senseonics/fragments/BaseStatisticsFragment;->tab5Name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    iget-object p1, p0, Lcom/senseonics/fragments/BaseStatisticsFragment;->tab1Layout:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/senseonics/fragments/BaseStatisticsFragment$1;

    invoke-direct {v0, p0}, Lcom/senseonics/fragments/BaseStatisticsFragment$1;-><init>(Lcom/senseonics/fragments/BaseStatisticsFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    iget-object p1, p0, Lcom/senseonics/fragments/BaseStatisticsFragment;->tab2Layout:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/senseonics/fragments/BaseStatisticsFragment$2;

    invoke-direct {v0, p0}, Lcom/senseonics/fragments/BaseStatisticsFragment$2;-><init>(Lcom/senseonics/fragments/BaseStatisticsFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    iget-object p1, p0, Lcom/senseonics/fragments/BaseStatisticsFragment;->tab3Layout:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/senseonics/fragments/BaseStatisticsFragment$3;

    invoke-direct {v0, p0}, Lcom/senseonics/fragments/BaseStatisticsFragment$3;-><init>(Lcom/senseonics/fragments/BaseStatisticsFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    iget-object p1, p0, Lcom/senseonics/fragments/BaseStatisticsFragment;->tab4Layout:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/senseonics/fragments/BaseStatisticsFragment$4;

    invoke-direct {v0, p0}, Lcom/senseonics/fragments/BaseStatisticsFragment$4;-><init>(Lcom/senseonics/fragments/BaseStatisticsFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    iget-object p1, p0, Lcom/senseonics/fragments/BaseStatisticsFragment;->tab5Layout:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/senseonics/fragments/BaseStatisticsFragment$5;

    invoke-direct {v0, p0}, Lcom/senseonics/fragments/BaseStatisticsFragment$5;-><init>(Lcom/senseonics/fragments/BaseStatisticsFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .line 40
    new-instance v0, Lcom/senseonics/gen12androidapp/ReportTabSelectionHandler;

    invoke-virtual {p0}, Lcom/senseonics/fragments/BaseStatisticsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/senseonics/gen12androidapp/ReportTabSelectionHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/senseonics/fragments/BaseStatisticsFragment;->reportTabSelectionHandler:Lcom/senseonics/gen12androidapp/ReportTabSelectionHandler;

    const v0, 0x7f1100bd

    .line 42
    invoke-virtual {p0, v0}, Lcom/senseonics/fragments/BaseStatisticsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/fragments/BaseStatisticsFragment;->tab1Name:Ljava/lang/String;

    const v0, 0x7f1100c0

    .line 43
    invoke-virtual {p0, v0}, Lcom/senseonics/fragments/BaseStatisticsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/fragments/BaseStatisticsFragment;->tab2Name:Ljava/lang/String;

    const v0, 0x7f1100be

    .line 44
    invoke-virtual {p0, v0}, Lcom/senseonics/fragments/BaseStatisticsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/fragments/BaseStatisticsFragment;->tab3Name:Ljava/lang/String;

    const v0, 0x7f1100bf

    .line 45
    invoke-virtual {p0, v0}, Lcom/senseonics/fragments/BaseStatisticsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/fragments/BaseStatisticsFragment;->tab4Name:Ljava/lang/String;

    const v0, 0x7f1100c1

    .line 46
    invoke-virtual {p0, v0}, Lcom/senseonics/fragments/BaseStatisticsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/fragments/BaseStatisticsFragment;->tab5Name:Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [I

    .line 48
    iput-object v0, p0, Lcom/senseonics/fragments/BaseStatisticsFragment;->selectedState:[I

    const/4 v1, 0x0

    aput v1, v0, v1

    const/4 v2, 0x1

    aput v1, v0, v2

    const/4 v2, 0x2

    aput v1, v0, v2

    const/4 v2, 0x3

    aput v1, v0, v2

    const/4 v2, 0x4

    aput v1, v0, v2

    .line 55
    invoke-super {p0, p1, p2, p3}, Lcom/senseonics/fragments/BaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onPause()V
    .locals 0

    .line 60
    invoke-super {p0}, Lcom/senseonics/fragments/BaseFragment;->onPause()V

    .line 61
    invoke-virtual {p0}, Lcom/senseonics/fragments/BaseStatisticsFragment;->dismissProgressDialogIfNeeded()V

    return-void
.end method

.method protected returnTabNameString(I)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const-string p1, ""

    goto :goto_0

    .line 110
    :cond_0
    iget-object p1, p0, Lcom/senseonics/fragments/BaseStatisticsFragment;->tab5Name:Ljava/lang/String;

    goto :goto_0

    .line 107
    :cond_1
    iget-object p1, p0, Lcom/senseonics/fragments/BaseStatisticsFragment;->tab4Name:Ljava/lang/String;

    goto :goto_0

    .line 104
    :cond_2
    iget-object p1, p0, Lcom/senseonics/fragments/BaseStatisticsFragment;->tab3Name:Ljava/lang/String;

    goto :goto_0

    .line 101
    :cond_3
    iget-object p1, p0, Lcom/senseonics/fragments/BaseStatisticsFragment;->tab2Name:Ljava/lang/String;

    goto :goto_0

    .line 98
    :cond_4
    iget-object p1, p0, Lcom/senseonics/fragments/BaseStatisticsFragment;->tab1Name:Ljava/lang/String;

    :goto_0
    return-object p1
.end method

.method public setSelected(ILandroid/widget/LinearLayout;)V
    .locals 2

    .line 207
    iget-object v0, p0, Lcom/senseonics/fragments/BaseStatisticsFragment;->selectedState:[I

    if-eqz v0, :cond_0

    aget v0, v0, p1

    if-nez v0, :cond_0

    .line 208
    invoke-virtual {p0}, Lcom/senseonics/fragments/BaseStatisticsFragment;->clearAllButtonStates()V

    .line 209
    iget-object v0, p0, Lcom/senseonics/fragments/BaseStatisticsFragment;->selectedState:[I

    const/4 v1, 0x1

    aput v1, v0, p1

    .line 210
    iget-object v0, p0, Lcom/senseonics/fragments/BaseStatisticsFragment;->reportTabSelectionHandler:Lcom/senseonics/gen12androidapp/ReportTabSelectionHandler;

    invoke-virtual {v0, p1}, Lcom/senseonics/gen12androidapp/ReportTabSelectionHandler;->setSelectedTab(I)V

    .line 211
    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 212
    invoke-virtual {p0, p1}, Lcom/senseonics/fragments/BaseStatisticsFragment;->activateDeactivateTabText(I)V

    .line 213
    invoke-virtual {p0}, Lcom/senseonics/fragments/BaseStatisticsFragment;->getParentFragment()Landroid/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/senseonics/fragments/StatisticsFragment;

    invoke-virtual {p0}, Lcom/senseonics/fragments/BaseStatisticsFragment;->hasData()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/senseonics/fragments/StatisticsFragment;->setShareButtonEnabled(Z)V

    :cond_0
    return-void
.end method

.method protected showProgressDialogIfNeeded()V
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/senseonics/fragments/BaseStatisticsFragment;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/senseonics/fragments/BaseStatisticsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/senseonics/fragments/BaseStatisticsFragment;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/senseonics/fragments/BaseStatisticsFragment;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    :cond_0
    return-void
.end method

.method protected updateTabSelection()V
    .locals 2

    .line 117
    iget-object v0, p0, Lcom/senseonics/fragments/BaseStatisticsFragment;->reportTabSelectionHandler:Lcom/senseonics/gen12androidapp/ReportTabSelectionHandler;

    invoke-virtual {v0}, Lcom/senseonics/gen12androidapp/ReportTabSelectionHandler;->getSelectedTab()I

    move-result v0

    .line 118
    invoke-virtual {p0, v0}, Lcom/senseonics/fragments/BaseStatisticsFragment;->getLayoutForTabId(I)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/senseonics/fragments/BaseStatisticsFragment;->setSelected(ILandroid/widget/LinearLayout;)V

    return-void
.end method
