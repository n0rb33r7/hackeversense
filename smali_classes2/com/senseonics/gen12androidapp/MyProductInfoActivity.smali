.class public Lcom/senseonics/gen12androidapp/MyProductInfoActivity;
.super Lcom/senseonics/gen12androidapp/BaseActivity;
.source "MyProductInfoActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 20
    invoke-super {p0, p1}, Lcom/senseonics/gen12androidapp/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0080

    .line 22
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/MyProductInfoActivity;->initializeLayout(I)Landroid/view/View;

    .line 23
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/MyProductInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f11025f

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/senseonics/gen12androidapp/MyProductInfoActivity;->configureNaviBar(ILjava/lang/String;Ljava/lang/String;)V

    .line 27
    :try_start_0
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/MyProductInfoActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/MyProductInfoActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 29
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->useUsxlOusxl2ProductInfo()Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x7f110261

    goto :goto_0

    :cond_0
    const v2, 0x7f110260

    :goto_0
    invoke-virtual {p0, v2}, Lcom/senseonics/gen12androidapp/MyProductInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "@companyurl"

    const-string v4, "<a href=\'http://global.eversensediabetes.com\'>global.eversensediabetes.com</a>"

    .line 32
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "@udi"

    .line 35
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->useUsxlOusxl2ProductInfo()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "00817491023551"

    goto :goto_1

    :cond_1
    const-string v4, "00817491023094"

    :goto_1
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 38
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v3, "@version"

    .line 39
    invoke-virtual {v2, v3, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "\u00a9 2016 Senseonics, Inc."

    .line 44
    sget-object v3, Lcom/senseonics/util/Utils;->VERSION_RELEASE_DATE:Ljava/lang/String;

    if-eqz v3, :cond_2

    sget-object v3, Lcom/senseonics/util/Utils;->VERSION_RELEASE_DATE:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 45
    sget-object v2, Lcom/senseonics/util/Utils;->VERSION_RELEASE_DATE:Ljava/lang/String;

    invoke-static {v2}, Lcom/senseonics/util/TimeProvider;->getCalendarForReleaseDateString(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v2

    .line 46
    invoke-static {v2}, Lcom/senseonics/util/TimeProvider;->formatDateToYearMonthDayString(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v3

    .line 50
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u00a9 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Lcom/senseonics/util/TimeProvider;->formatReleaseYearString(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " Senseonics, Inc."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_2
    const v3, 0x7f110220

    .line 53
    invoke-virtual {p0, v3}, Lcom/senseonics/gen12androidapp/MyProductInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_2
    const-string v4, "@releasedate"

    .line 55
    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v3, "@coprinfo"

    .line 56
    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "@compatibilityurl"

    const-string v3, "<a href=\'https://global.eversensediabetes.com/compatibility/\'>https://<br/>global.eversensediabetes.com/<br/>compatibility/</a>"

    .line 59
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const v2, 0x7f0900f5

    .line 61
    invoke-virtual {p0, v2}, Lcom/senseonics/gen12androidapp/MyProductInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/webkit/WebView;

    const-string v3, "text/html; charset=UTF-8"

    .line 62
    invoke-virtual {v2, p1, v3, v1}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const p1, 0x7f0903ef

    .line 65
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/MyProductInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 66
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->useUsxlOusxl2ProductInfo()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "FG-5301-02-300"

    goto :goto_3

    :cond_3
    const-string v1, "FG-5301-01-300"

    :goto_3
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f0901cf

    .line 69
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/MyProductInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    const v1, 0x7f0800ee

    .line 70
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 71
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    const p1, 0x7f0901ea

    .line 74
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/MyProductInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 75
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p1

    .line 78
    invoke-virtual {p1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :goto_4
    return-void
.end method
