.class public Lorg/michaelbel/bottomsheet/BottomSheet$Builder;
.super Ljava/lang/Object;
.source "BottomSheet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/michaelbel/bottomsheet/BottomSheet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private bottomSheet:Lorg/michaelbel/bottomsheet/BottomSheet;

.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1033
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1034
    iput-object p1, p0, Lorg/michaelbel/bottomsheet/BottomSheet$Builder;->context:Landroid/content/Context;

    .line 1035
    new-instance v0, Lorg/michaelbel/bottomsheet/BottomSheet;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lorg/michaelbel/bottomsheet/BottomSheet;-><init>(Landroid/content/Context;ZLorg/michaelbel/bottomsheet/BottomSheet$1;)V

    iput-object v0, p0, Lorg/michaelbel/bottomsheet/BottomSheet$Builder;->bottomSheet:Lorg/michaelbel/bottomsheet/BottomSheet;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    .line 1043
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1044
    iput-object p1, p0, Lorg/michaelbel/bottomsheet/BottomSheet$Builder;->context:Landroid/content/Context;

    .line 1045
    new-instance v0, Lorg/michaelbel/bottomsheet/BottomSheet;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lorg/michaelbel/bottomsheet/BottomSheet;-><init>(Landroid/content/Context;ZLorg/michaelbel/bottomsheet/BottomSheet$1;)V

    iput-object v0, p0, Lorg/michaelbel/bottomsheet/BottomSheet$Builder;->bottomSheet:Lorg/michaelbel/bottomsheet/BottomSheet;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2

    .line 1038
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1039
    iput-object p1, p0, Lorg/michaelbel/bottomsheet/BottomSheet$Builder;->context:Landroid/content/Context;

    .line 1040
    new-instance v0, Lorg/michaelbel/bottomsheet/BottomSheet;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lorg/michaelbel/bottomsheet/BottomSheet;-><init>(Landroid/content/Context;ZLorg/michaelbel/bottomsheet/BottomSheet$1;)V

    iput-object v0, p0, Lorg/michaelbel/bottomsheet/BottomSheet$Builder;->bottomSheet:Lorg/michaelbel/bottomsheet/BottomSheet;

    return-void
.end method


# virtual methods
.method public create()Lorg/michaelbel/bottomsheet/BottomSheet;
    .locals 1

    .line 1352
    iget-object v0, p0, Lorg/michaelbel/bottomsheet/BottomSheet$Builder;->bottomSheet:Lorg/michaelbel/bottomsheet/BottomSheet;

    return-object v0
.end method

.method public dismiss()Lorg/michaelbel/bottomsheet/BottomSheet;
    .locals 1

    .line 1345
    iget-object v0, p0, Lorg/michaelbel/bottomsheet/BottomSheet$Builder;->bottomSheet:Lorg/michaelbel/bottomsheet/BottomSheet;

    invoke-virtual {v0}, Lorg/michaelbel/bottomsheet/BottomSheet;->dismiss()V

    .line 1346
    iget-object v0, p0, Lorg/michaelbel/bottomsheet/BottomSheet$Builder;->bottomSheet:Lorg/michaelbel/bottomsheet/BottomSheet;

    return-object v0
.end method

.method public getGridView()Landroid/widget/GridView;
    .locals 1

    .line 1366
    iget-object v0, p0, Lorg/michaelbel/bottomsheet/BottomSheet$Builder;->bottomSheet:Lorg/michaelbel/bottomsheet/BottomSheet;

    invoke-static {v0}, Lorg/michaelbel/bottomsheet/BottomSheet;->access$5000(Lorg/michaelbel/bottomsheet/BottomSheet;)Landroid/widget/GridView;

    move-result-object v0

    return-object v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .line 1362
    iget-object v0, p0, Lorg/michaelbel/bottomsheet/BottomSheet$Builder;->bottomSheet:Lorg/michaelbel/bottomsheet/BottomSheet;

    invoke-static {v0}, Lorg/michaelbel/bottomsheet/BottomSheet;->access$4900(Lorg/michaelbel/bottomsheet/BottomSheet;)Landroid/widget/ListView;

    move-result-object v0

    return-object v0
.end method

.method public getTitleTextView()Landroid/widget/TextView;
    .locals 1

    .line 1358
    iget-object v0, p0, Lorg/michaelbel/bottomsheet/BottomSheet$Builder;->bottomSheet:Lorg/michaelbel/bottomsheet/BottomSheet;

    invoke-static {v0}, Lorg/michaelbel/bottomsheet/BottomSheet;->access$4800(Lorg/michaelbel/bottomsheet/BottomSheet;)Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 1371
    iget-object v0, p0, Lorg/michaelbel/bottomsheet/BottomSheet$Builder;->bottomSheet:Lorg/michaelbel/bottomsheet/BottomSheet;

    invoke-static {v0}, Lorg/michaelbel/bottomsheet/BottomSheet;->access$3300(Lorg/michaelbel/bottomsheet/BottomSheet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public setBackgroundColor(I)Lorg/michaelbel/bottomsheet/BottomSheet$Builder;
    .locals 1

    .line 1268
    iget-object v0, p0, Lorg/michaelbel/bottomsheet/BottomSheet$Builder;->bottomSheet:Lorg/michaelbel/bottomsheet/BottomSheet;

    invoke-static {v0, p1}, Lorg/michaelbel/bottomsheet/BottomSheet;->access$4002(Lorg/michaelbel/bottomsheet/BottomSheet;I)I

    return-object p0
.end method

.method public setBackgroundColorRes(I)Lorg/michaelbel/bottomsheet/BottomSheet$Builder;
    .locals 2

    .line 1274
    iget-object v0, p0, Lorg/michaelbel/bottomsheet/BottomSheet$Builder;->bottomSheet:Lorg/michaelbel/bottomsheet/BottomSheet;

    iget-object v1, p0, Lorg/michaelbel/bottomsheet/BottomSheet$Builder;->context:Landroid/content/Context;

    invoke-static {v1, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-static {v0, p1}, Lorg/michaelbel/bottomsheet/BottomSheet;->access$4002(Lorg/michaelbel/bottomsheet/BottomSheet;I)I

    return-object p0
.end method

.method public setCallback(Lorg/michaelbel/bottomsheet/BottomSheetCallback;)Lorg/michaelbel/bottomsheet/BottomSheet$Builder;
    .locals 1

    .line 1331
    iget-object v0, p0, Lorg/michaelbel/bottomsheet/BottomSheet$Builder;->bottomSheet:Lorg/michaelbel/bottomsheet/BottomSheet;

    invoke-static {v0, p1}, Lorg/michaelbel/bottomsheet/BottomSheet;->access$4702(Lorg/michaelbel/bottomsheet/BottomSheet;Lorg/michaelbel/bottomsheet/BottomSheetCallback;)Lorg/michaelbel/bottomsheet/BottomSheetCallback;

    return-object p0
.end method

.method public setCellHeight(I)Lorg/michaelbel/bottomsheet/BottomSheet$Builder;
    .locals 1

    .line 1213
    iget-object v0, p0, Lorg/michaelbel/bottomsheet/BottomSheet$Builder;->bottomSheet:Lorg/michaelbel/bottomsheet/BottomSheet;

    invoke-static {v0, p1}, Lorg/michaelbel/bottomsheet/BottomSheet;->access$3602(Lorg/michaelbel/bottomsheet/BottomSheet;I)I

    return-object p0
.end method

.method public setContentType(I)Lorg/michaelbel/bottomsheet/BottomSheet$Builder;
    .locals 1

    .line 1183
    iget-object v0, p0, Lorg/michaelbel/bottomsheet/BottomSheet$Builder;->bottomSheet:Lorg/michaelbel/bottomsheet/BottomSheet;

    invoke-static {v0, p1}, Lorg/michaelbel/bottomsheet/BottomSheet;->access$3402(Lorg/michaelbel/bottomsheet/BottomSheet;I)I

    return-object p0
.end method

.method public setCustomView(I)Lorg/michaelbel/bottomsheet/BottomSheet$Builder;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1384
    iget-object v0, p0, Lorg/michaelbel/bottomsheet/BottomSheet$Builder;->bottomSheet:Lorg/michaelbel/bottomsheet/BottomSheet;

    iget-object v1, p0, Lorg/michaelbel/bottomsheet/BottomSheet$Builder;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/michaelbel/bottomsheet/BottomSheet;->access$3302(Lorg/michaelbel/bottomsheet/BottomSheet;Landroid/view/View;)Landroid/view/View;

    return-object p0
.end method

.method public setCustomView(Landroid/view/View;)Lorg/michaelbel/bottomsheet/BottomSheet$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1378
    iget-object v0, p0, Lorg/michaelbel/bottomsheet/BottomSheet$Builder;->bottomSheet:Lorg/michaelbel/bottomsheet/BottomSheet;

    invoke-static {v0, p1}, Lorg/michaelbel/bottomsheet/BottomSheet;->access$3302(Lorg/michaelbel/bottomsheet/BottomSheet;Landroid/view/View;)Landroid/view/View;

    return-object p0
.end method

.method public setDarkTheme(I)Lorg/michaelbel/bottomsheet/BottomSheet$Builder;
    .locals 2

    .line 1193
    iget-object v0, p0, Lorg/michaelbel/bottomsheet/BottomSheet$Builder;->bottomSheet:Lorg/michaelbel/bottomsheet/BottomSheet;

    iget-object v1, p0, Lorg/michaelbel/bottomsheet/BottomSheet$Builder;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    invoke-static {v0, p1}, Lorg/michaelbel/bottomsheet/BottomSheet;->access$3502(Lorg/michaelbel/bottomsheet/BottomSheet;Z)Z

    return-object p0
.end method

.method public setDarkTheme(Z)Lorg/michaelbel/bottomsheet/BottomSheet$Builder;
    .locals 1

    .line 1188
    iget-object v0, p0, Lorg/michaelbel/bottomsheet/BottomSheet$Builder;->bottomSheet:Lorg/michaelbel/bottomsheet/BottomSheet;

    invoke-static {v0, p1}, Lorg/michaelbel/bottomsheet/BottomSheet;->access$3502(Lorg/michaelbel/bottomsheet/BottomSheet;Z)Z

    return-object p0
.end method

.method public setDividers(I)Lorg/michaelbel/bottomsheet/BottomSheet$Builder;
    .locals 2

    .line 1227
    iget-object v0, p0, Lorg/michaelbel/bottomsheet/BottomSheet$Builder;->bottomSheet:Lorg/michaelbel/bottomsheet/BottomSheet;

    iget-object v1, p0, Lorg/michaelbel/bottomsheet/BottomSheet$Builder;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    invoke-static {v0, p1}, Lorg/michaelbel/bottomsheet/BottomSheet;->access$3702(Lorg/michaelbel/bottomsheet/BottomSheet;Z)Z

    return-object p0
.end method

.method public setDividers(Z)Lorg/michaelbel/bottomsheet/BottomSheet$Builder;
    .locals 1

    .line 1222
    iget-object v0, p0, Lorg/michaelbel/bottomsheet/BottomSheet$Builder;->bottomSheet:Lorg/michaelbel/bottomsheet/BottomSheet;

    invoke-static {v0, p1}, Lorg/michaelbel/bottomsheet/BottomSheet;->access$3702(Lorg/michaelbel/bottomsheet/BottomSheet;Z)Z

    return-object p0
.end method

.method public setFabBehavior(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)Lorg/michaelbel/bottomsheet/BottomSheet$Builder;
    .locals 1

    .line 1253
    iget-object v0, p0, Lorg/michaelbel/bottomsheet/BottomSheet$Builder;->bottomSheet:Lorg/michaelbel/bottomsheet/BottomSheet;

    invoke-static {v0, p1}, Lorg/michaelbel/bottomsheet/BottomSheet;->access$902(Lorg/michaelbel/bottomsheet/BottomSheet;Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    return-object p0
.end method

.method public setFabBehavior(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;I)Lorg/michaelbel/bottomsheet/BottomSheet$Builder;
    .locals 1

    .line 1260
    iget-object v0, p0, Lorg/michaelbel/bottomsheet/BottomSheet$Builder;->bottomSheet:Lorg/michaelbel/bottomsheet/BottomSheet;

    invoke-static {v0, p1}, Lorg/michaelbel/bottomsheet/BottomSheet;->access$902(Lorg/michaelbel/bottomsheet/BottomSheet;Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 1261
    iget-object p1, p0, Lorg/michaelbel/bottomsheet/BottomSheet$Builder;->bottomSheet:Lorg/michaelbel/bottomsheet/BottomSheet;

    invoke-static {p1, p2}, Lorg/michaelbel/bottomsheet/BottomSheet;->access$1002(Lorg/michaelbel/bottomsheet/BottomSheet;I)I

    return-object p0
.end method

.method public setFullWidth(I)Lorg/michaelbel/bottomsheet/BottomSheet$Builder;
    .locals 2

    .line 1208
    iget-object v0, p0, Lorg/michaelbel/bottomsheet/BottomSheet$Builder;->bottomSheet:Lorg/michaelbel/bottomsheet/BottomSheet;

    iget-object v1, p0, Lorg/michaelbel/bottomsheet/BottomSheet$Builder;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    invoke-static {v0, p1}, Lorg/michaelbel/bottomsheet/BottomSheet;->access$2302(Lorg/michaelbel/bottomsheet/BottomSheet;Z)Z

    return-object p0
.end method

.method public setFullWidth(Z)Lorg/michaelbel/bottomsheet/BottomSheet$Builder;
    .locals 1

    .line 1203
    iget-object v0, p0, Lorg/michaelbel/bottomsheet/BottomSheet$Builder;->bottomSheet:Lorg/michaelbel/bottomsheet/BottomSheet;

    invoke-static {v0, p1}, Lorg/michaelbel/bottomsheet/BottomSheet;->access$2302(Lorg/michaelbel/bottomsheet/BottomSheet;Z)Z

    return-object p0
.end method

.method public setIconColor(I)Lorg/michaelbel/bottomsheet/BottomSheet$Builder;
    .locals 1

    .line 1301
    iget-object v0, p0, Lorg/michaelbel/bottomsheet/BottomSheet$Builder;->bottomSheet:Lorg/michaelbel/bottomsheet/BottomSheet;

    invoke-static {v0, p1}, Lorg/michaelbel/bottomsheet/BottomSheet;->access$4302(Lorg/michaelbel/bottomsheet/BottomSheet;I)I

    return-object p0
.end method

.method public setIconColorRes(I)Lorg/michaelbel/bottomsheet/BottomSheet$Builder;
    .locals 2

    .line 1307
    iget-object v0, p0, Lorg/michaelbel/bottomsheet/BottomSheet$Builder;->bottomSheet:Lorg/michaelbel/bottomsheet/BottomSheet;

    iget-object v1, p0, Lorg/michaelbel/bottomsheet/BottomSheet$Builder;->context:Landroid/content/Context;

    invoke-static {v1, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-static {v0, p1}, Lorg/michaelbel/bottomsheet/BottomSheet;->access$4302(Lorg/michaelbel/bottomsheet/BottomSheet;I)I

    return-object p0
.end method

.method public setItemSelector(I)Lorg/michaelbel/bottomsheet/BottomSheet$Builder;
    .locals 1

    .line 1312
    iget-object v0, p0, Lorg/michaelbel/bottomsheet/BottomSheet$Builder;->bottomSheet:Lorg/michaelbel/bottomsheet/BottomSheet;

    invoke-static {v0, p1}, Lorg/michaelbel/bottomsheet/BottomSheet;->access$4402(Lorg/michaelbel/bottomsheet/BottomSheet;I)I

    return-object p0
.end method

.method public setItemTextColor(I)Lorg/michaelbel/bottomsheet/BottomSheet$Builder;
    .locals 1

    .line 1290
    iget-object v0, p0, Lorg/michaelbel/bottomsheet/BottomSheet$Builder;->bottomSheet:Lorg/michaelbel/bottomsheet/BottomSheet;

    invoke-static {v0, p1}, Lorg/michaelbel/bottomsheet/BottomSheet;->access$4202(Lorg/michaelbel/bottomsheet/BottomSheet;I)I

    return-object p0
.end method

.method public setItemTextColorRes(I)Lorg/michaelbel/bottomsheet/BottomSheet$Builder;
    .locals 2

    .line 1296
    iget-object v0, p0, Lorg/michaelbel/bottomsheet/BottomSheet$Builder;->bottomSheet:Lorg/michaelbel/bottomsheet/BottomSheet;

    iget-object v1, p0, Lorg/michaelbel/bottomsheet/BottomSheet$Builder;->context:Landroid/content/Context;

    invoke-static {v1, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-static {v0, p1}, Lorg/michaelbel/bottomsheet/BottomSheet;->access$4202(Lorg/michaelbel/bottomsheet/BottomSheet;I)I

    return-object p0
.end method

.method public setItems(ILandroid/content/DialogInterface$OnClickListener;)Lorg/michaelbel/bottomsheet/BottomSheet$Builder;
    .locals 2

    .line 1064
    iget-object v0, p0, Lorg/michaelbel/bottomsheet/BottomSheet$Builder;->bottomSheet:Lorg/michaelbel/bottomsheet/BottomSheet;

    invoke-static {v0}, Lorg/michaelbel/bottomsheet/BottomSheet;->access$3100(Lorg/michaelbel/bottomsheet/BottomSheet;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lorg/michaelbel/bottomsheet/BottomSheet$Builder;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1065
    iget-object p1, p0, Lorg/michaelbel/bottomsheet/BottomSheet$Builder;->bottomSheet:Lorg/michaelbel/bottomsheet/BottomSheet;

    invoke-static {p1, p2}, Lorg/michaelbel/bottomsheet/BottomSheet;->access$502(Lorg/michaelbel/bottomsheet/BottomSheet;Landroid/content/DialogInterface$OnClickListener;)Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setItems(I[ILandroid/content/DialogInterface$OnClickListener;)Lorg/michaelbel/bottomsheet/BottomSheet$Builder;
    .locals 4

    .line 1085
    iget-object v0, p0, Lorg/michaelbel/bottomsheet/BottomSheet$Builder;->bottomSheet:Lorg/michaelbel/bottomsheet/BottomSheet;

    invoke-static {v0}, Lorg/michaelbel/bottomsheet/BottomSheet;->access$3100(Lorg/michaelbel/bottomsheet/BottomSheet;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lorg/michaelbel/bottomsheet/BottomSheet$Builder;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1086
    array-length p1, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    aget v1, p2, v0

    .line 1087
    iget-object v2, p0, Lorg/michaelbel/bottomsheet/BottomSheet$Builder;->bottomSheet:Lorg/michaelbel/bottomsheet/BottomSheet;

    invoke-static {v2}, Lorg/michaelbel/bottomsheet/BottomSheet;->access$3200(Lorg/michaelbel/bottomsheet/BottomSheet;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lorg/michaelbel/bottomsheet/BottomSheet$Builder;->context:Landroid/content/Context;

    invoke-static {v3, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1089
    :cond_0
    iget-object p1, p0, Lorg/michaelbel/bottomsheet/BottomSheet$Builder;->bottomSheet:Lorg/michaelbel/bottomsheet/BottomSheet;

    invoke-static {p1, p3}, Lorg/michaelbel/bottomsheet/BottomSheet;->access$502(Lorg/michaelbel/bottomsheet/BottomSheet;Landroid/content/DialogInterface$OnClickListener;)Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setItems(I[Landroid/graphics/drawable/Drawable;Landroid/content/DialogInterface$OnClickListener;)Lorg/michaelbel/bottomsheet/BottomSheet$Builder;
    .locals 2

    .line 1095
    iget-object v0, p0, Lorg/michaelbel/bottomsheet/BottomSheet$Builder;->bottomSheet:Lorg/michaelbel/bottomsheet/BottomSheet;

    invoke-static {v0}, Lorg/michaelbel/bottomsheet/BottomSheet;->access$3100(Lorg/michaelbel/bottomsheet/BottomSheet;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lorg/michaelbel/bottomsheet/BottomSheet$Builder;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 1096
    iget-object p1, p0, Lorg/michaelbel/bottomsheet/BottomSheet$Builder;->bottomSheet:Lorg/michaelbel/bottomsheet/BottomSheet;

    invoke-static {p1}, Lorg/michaelbel/bottomsheet/BottomSheet;->access$3200(Lorg/michaelbel/bottomsheet/BottomSheet;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1, p2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 1097
    iget-object p1, p0, Lorg/michaelbel/bottomsheet/BottomSheet$Builder;->bottomSheet:Lorg/michaelbel/bottomsheet/BottomSheet;

    invoke-static {p1, p3}, Lorg/michaelbel/bottomsheet/BottomSheet;->access$502(Lorg/michaelbel/bottomsheet/BottomSheet;Landroid/content/DialogInterface$OnClickListener;)Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setItems([ILandroid/content/DialogInterface$OnClickListener;)Lorg/michaelbel/bottomsheet/BottomSheet$Builder;
    .locals 5

    .line 1070
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p1, v1

    .line 1071
    iget-object v3, p0, Lorg/michaelbel/bottomsheet/BottomSheet$Builder;->bottomSheet:Lorg/michaelbel/bottomsheet/BottomSheet;

    invoke-static {v3}, Lorg/michaelbel/bottomsheet/BottomSheet;->access$3100(Lorg/michaelbel/bottomsheet/BottomSheet;)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lorg/michaelbel/bottomsheet/BottomSheet$Builder;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1073
    :cond_0
    iget-object p1, p0, Lorg/michaelbel/bottomsheet/BottomSheet$Builder;->bottomSheet:Lorg/michaelbel/bottomsheet/BottomSheet;

    invoke-static {p1, p2}, Lorg/michaelbel/bottomsheet/BottomSheet;->access$502(Lorg/michaelbel/bottomsheet/BottomSheet;Landroid/content/DialogInterface$OnClickListener;)Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setItems([I[ILandroid/content/DialogInterface$OnClickListener;)Lorg/michaelbel/bottomsheet/BottomSheet$Builder;
    .locals 6

    .line 1102
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    aget v3, p1, v2

    .line 1103
    iget-object v4, p0, Lorg/michaelbel/bottomsheet/BottomSheet$Builder;->bottomSheet:Lorg/michaelbel/bottomsheet/BottomSheet;

    invoke-static {v4}, Lorg/michaelbel/bottomsheet/BottomSheet;->access$3100(Lorg/michaelbel/bottomsheet/BottomSheet;)Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, Lorg/michaelbel/bottomsheet/BottomSheet$Builder;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1105
    :cond_0
    array-length p1, p2

    :goto_1
    if-ge v1, p1, :cond_1

    aget v0, p2, v1

    .line 1106
    iget-object v2, p0, Lorg/michaelbel/bottomsheet/BottomSheet$Builder;->bottomSheet:Lorg/michaelbel/bottomsheet/BottomSheet;

    invoke-static {v2}, Lorg/michaelbel/bottomsheet/BottomSheet;->access$3200(Lorg/michaelbel/bottomsheet/BottomSheet;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lorg/michaelbel/bottomsheet/BottomSheet$Builder;->context:Landroid/content/Context;

    invoke-static {v3, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1108
    :cond_1
    iget-object p1, p0, Lorg/michaelbel/bottomsheet/BottomSheet$Builder;->bottomSheet:Lorg/michaelbel/bottomsheet/BottomSheet;

    invoke-static {p1, p3}, Lorg/michaelbel/bottomsheet/BottomSheet;->access$502(Lorg/michaelbel/bottomsheet/BottomSheet;Landroid/content/DialogInterface$OnClickListener;)Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setItems([I[Landroid/graphics/drawable/Drawable;Landroid/content/DialogInterface$OnClickListener;)Lorg/michaelbel/bottomsheet/BottomSheet$Builder;
    .locals 5

    .line 1114
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p1, v1

    .line 1115
    iget-object v3, p0, Lorg/michaelbel/bottomsheet/BottomSheet$Builder;->bottomSheet:Lorg/michaelbel/bottomsheet/BottomSheet;

    invoke-static {v3}, Lorg/michaelbel/bottomsheet/BottomSheet;->access$3100(Lorg/michaelbel/bottomsheet/BottomSheet;)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lorg/michaelbel/bottomsheet/BottomSheet$Builder;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1117
    :cond_0
    iget-object p1, p0, Lorg/michaelbel/bottomsheet/BottomSheet$Builder;->bottomSheet:Lorg/michaelbel/bottomsheet/BottomSheet;

    invoke-static {p1}, Lorg/michaelbel/bottomsheet/BottomSheet;->access$3200(Lorg/michaelbel/bottomsheet/BottomSheet;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1, p2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 1118
    iget-object p1, p0, Lorg/michaelbel/bottomsheet/BottomSheet$Builder;->bottomSheet:Lorg/michaelbel/bottomsheet/BottomSheet;

    invoke-static {p1, p3}, Lorg/michaelbel/bottomsheet/BottomSheet;->access$502(Lorg/michaelbel/bottomsheet/BottomSheet;Landroid/content/DialogInterface$OnClickListener;)Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/michaelbel/bottomsheet/BottomSheet$Builder;
    .locals 1

    .line 1078
    iget-object v0, p0, Lorg/michaelbel/bottomsheet/BottomSheet$Builder;->bottomSheet:Lorg/michaelbel/bottomsheet/BottomSheet;

    invoke-static {v0}, Lorg/michaelbel/bottomsheet/BottomSheet;->access$3100(Lorg/michaelbel/bottomsheet/BottomSheet;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1079
    iget-object p1, p0, Lorg/michaelbel/bottomsheet/BottomSheet$Builder;->bottomSheet:Lorg/michaelbel/bottomsheet/BottomSheet;

    invoke-static {p1, p2}, Lorg/michaelbel/bottomsheet/BottomSheet;->access$502(Lorg/michaelbel/bottomsheet/BottomSheet;Landroid/content/DialogInterface$OnClickListener;)Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setItems([Ljava/lang/CharSequence;[ILandroid/content/DialogInterface$OnClickListener;)Lorg/michaelbel/bottomsheet/BottomSheet$Builder;
    .locals 4

    .line 1123
    iget-object v0, p0, Lorg/michaelbel/bottomsheet/BottomSheet$Builder;->bottomSheet:Lorg/michaelbel/bottomsheet/BottomSheet;

    invoke-static {v0}, Lorg/michaelbel/bottomsheet/BottomSheet;->access$3100(Lorg/michaelbel/bottomsheet/BottomSheet;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1124
    array-length p1, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    aget v1, p2, v0

    .line 1125
    iget-object v2, p0, Lorg/michaelbel/bottomsheet/BottomSheet$Builder;->bottomSheet:Lorg/michaelbel/bottomsheet/BottomSheet;

    invoke-static {v2}, Lorg/michaelbel/bottomsheet/BottomSheet;->access$3200(Lorg/michaelbel/bottomsheet/BottomSheet;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lorg/michaelbel/bottomsheet/BottomSheet$Builder;->context:Landroid/content/Context;

    invoke-static {v3, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1127
    :cond_0
    iget-object p1, p0, Lorg/michaelbel/bottomsheet/BottomSheet$Builder;->bottomSheet:Lorg/michaelbel/bottomsheet/BottomSheet;

    invoke-static {p1, p3}, Lorg/michaelbel/bottomsheet/BottomSheet;->access$502(Lorg/michaelbel/bottomsheet/BottomSheet;Landroid/content/DialogInterface$OnClickListener;)Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setItems([Ljava/lang/CharSequence;[Landroid/graphics/drawable/Drawable;Landroid/content/DialogInterface$OnClickListener;)Lorg/michaelbel/bottomsheet/BottomSheet$Builder;
    .locals 1

    .line 1133
    iget-object v0, p0, Lorg/michaelbel/bottomsheet/BottomSheet$Builder;->bottomSheet:Lorg/michaelbel/bottomsheet/BottomSheet;

    invoke-static {v0}, Lorg/michaelbel/bottomsheet/BottomSheet;->access$3100(Lorg/michaelbel/bottomsheet/BottomSheet;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1134
    iget-object p1, p0, Lorg/michaelbel/bottomsheet/BottomSheet$Builder;->bottomSheet:Lorg/michaelbel/bottomsheet/BottomSheet;

    invoke-static {p1}, Lorg/michaelbel/bottomsheet/BottomSheet;->access$3200(Lorg/michaelbel/bottomsheet/BottomSheet;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1, p2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 1135
    iget-object p1, p0, Lorg/michaelbel/bottomsheet/BottomSheet$Builder;->bottomSheet:Lorg/michaelbel/bottomsheet/BottomSheet;

    invoke-static {p1, p3}, Lorg/michaelbel/bottomsheet/BottomSheet;->access$502(Lorg/michaelbel/bottomsheet/BottomSheet;Landroid/content/DialogInterface$OnClickListener;)Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setMenu(ILandroid/content/DialogInterface$OnClickListener;)Lorg/michaelbel/bottomsheet/BottomSheet$Builder;
    .locals 3

    .line 1148
    new-instance v0, Lorg/michaelbel/bottomsheet/menu/BottomSheetMenu;

    iget-object v1, p0, Lorg/michaelbel/bottomsheet/BottomSheet$Builder;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/michaelbel/bottomsheet/menu/BottomSheetMenu;-><init>(Landroid/content/Context;)V

    .line 1149
    new-instance v1, Landroid/view/MenuInflater;

    iget-object v2, p0, Lorg/michaelbel/bottomsheet/BottomSheet$Builder;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1, v0}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 p1, 0x0

    .line 1151
    :goto_0
    invoke-virtual {v0}, Lorg/michaelbel/bottomsheet/menu/BottomSheetMenu;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 1152
    iget-object v1, p0, Lorg/michaelbel/bottomsheet/BottomSheet$Builder;->bottomSheet:Lorg/michaelbel/bottomsheet/BottomSheet;

    invoke-static {v1}, Lorg/michaelbel/bottomsheet/BottomSheet;->access$3100(Lorg/michaelbel/bottomsheet/BottomSheet;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, p1}, Lorg/michaelbel/bottomsheet/menu/BottomSheetMenu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1153
    iget-object v1, p0, Lorg/michaelbel/bottomsheet/BottomSheet$Builder;->bottomSheet:Lorg/michaelbel/bottomsheet/BottomSheet;

    invoke-static {v1}, Lorg/michaelbel/bottomsheet/BottomSheet;->access$3200(Lorg/michaelbel/bottomsheet/BottomSheet;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, p1}, Lorg/michaelbel/bottomsheet/menu/BottomSheetMenu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 1156
    :cond_0
    iget-object p1, p0, Lorg/michaelbel/bottomsheet/BottomSheet$Builder;->bottomSheet:Lorg/michaelbel/bottomsheet/BottomSheet;

    invoke-static {p1, p2}, Lorg/michaelbel/bottomsheet/BottomSheet;->access$502(Lorg/michaelbel/bottomsheet/BottomSheet;Landroid/content/DialogInterface$OnClickListener;)Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setMenu(Landroid/view/Menu;Landroid/content/DialogInterface$OnClickListener;)Lorg/michaelbel/bottomsheet/BottomSheet$Builder;
    .locals 3

    const/4 v0, 0x0

    .line 1161
    :goto_0
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1162
    iget-object v1, p0, Lorg/michaelbel/bottomsheet/BottomSheet$Builder;->bottomSheet:Lorg/michaelbel/bottomsheet/BottomSheet;

    invoke-static {v1}, Lorg/michaelbel/bottomsheet/BottomSheet;->access$3100(Lorg/michaelbel/bottomsheet/BottomSheet;)Ljava/util/List;

    move-result-object v1

    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1163
    iget-object v1, p0, Lorg/michaelbel/bottomsheet/BottomSheet$Builder;->bottomSheet:Lorg/michaelbel/bottomsheet/BottomSheet;

    invoke-static {v1}, Lorg/michaelbel/bottomsheet/BottomSheet;->access$3200(Lorg/michaelbel/bottomsheet/BottomSheet;)Ljava/util/List;

    move-result-object v1

    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1166
    :cond_0
    iget-object p1, p0, Lorg/michaelbel/bottomsheet/BottomSheet$Builder;->bottomSheet:Lorg/michaelbel/bottomsheet/BottomSheet;

    invoke-static {p1, p2}, Lorg/michaelbel/bottomsheet/BottomSheet;->access$502(Lorg/michaelbel/bottomsheet/BottomSheet;Landroid/content/DialogInterface$OnClickListener;)Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lorg/michaelbel/bottomsheet/BottomSheet$Builder;
    .locals 1

    .line 1326
    iget-object v0, p0, Lorg/michaelbel/bottomsheet/BottomSheet$Builder;->bottomSheet:Lorg/michaelbel/bottomsheet/BottomSheet;

    invoke-static {v0, p1}, Lorg/michaelbel/bottomsheet/BottomSheet;->access$4602(Lorg/michaelbel/bottomsheet/BottomSheet;Landroid/content/DialogInterface$OnDismissListener;)Landroid/content/DialogInterface$OnDismissListener;

    return-object p0
.end method

.method public setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)Lorg/michaelbel/bottomsheet/BottomSheet$Builder;
    .locals 1

    .line 1320
    iget-object v0, p0, Lorg/michaelbel/bottomsheet/BottomSheet$Builder;->bottomSheet:Lorg/michaelbel/bottomsheet/BottomSheet;

    invoke-static {v0, p1}, Lorg/michaelbel/bottomsheet/BottomSheet;->access$4502(Lorg/michaelbel/bottomsheet/BottomSheet;Landroid/content/DialogInterface$OnShowListener;)Landroid/content/DialogInterface$OnShowListener;

    return-object p0
.end method

.method public setTitle(I)Lorg/michaelbel/bottomsheet/BottomSheet$Builder;
    .locals 2

    .line 1049
    iget-object v0, p0, Lorg/michaelbel/bottomsheet/BottomSheet$Builder;->bottomSheet:Lorg/michaelbel/bottomsheet/BottomSheet;

    iget-object v1, p0, Lorg/michaelbel/bottomsheet/BottomSheet$Builder;->context:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/michaelbel/bottomsheet/BottomSheet;->access$3002(Lorg/michaelbel/bottomsheet/BottomSheet;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Lorg/michaelbel/bottomsheet/BottomSheet$Builder;
    .locals 1

    .line 1054
    iget-object v0, p0, Lorg/michaelbel/bottomsheet/BottomSheet$Builder;->bottomSheet:Lorg/michaelbel/bottomsheet/BottomSheet;

    invoke-static {v0, p1}, Lorg/michaelbel/bottomsheet/BottomSheet;->access$3002(Lorg/michaelbel/bottomsheet/BottomSheet;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setTitleMultiline(I)Lorg/michaelbel/bottomsheet/BottomSheet$Builder;
    .locals 2

    .line 1246
    iget-object v0, p0, Lorg/michaelbel/bottomsheet/BottomSheet$Builder;->bottomSheet:Lorg/michaelbel/bottomsheet/BottomSheet;

    iget-object v1, p0, Lorg/michaelbel/bottomsheet/BottomSheet$Builder;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    invoke-static {v0, p1}, Lorg/michaelbel/bottomsheet/BottomSheet;->access$3902(Lorg/michaelbel/bottomsheet/BottomSheet;Z)Z

    return-object p0
.end method

.method public setTitleMultiline(Z)Lorg/michaelbel/bottomsheet/BottomSheet$Builder;
    .locals 1

    .line 1241
    iget-object v0, p0, Lorg/michaelbel/bottomsheet/BottomSheet$Builder;->bottomSheet:Lorg/michaelbel/bottomsheet/BottomSheet;

    invoke-static {v0, p1}, Lorg/michaelbel/bottomsheet/BottomSheet;->access$3902(Lorg/michaelbel/bottomsheet/BottomSheet;Z)Z

    return-object p0
.end method

.method public setTitleTextColor(I)Lorg/michaelbel/bottomsheet/BottomSheet$Builder;
    .locals 1

    .line 1279
    iget-object v0, p0, Lorg/michaelbel/bottomsheet/BottomSheet$Builder;->bottomSheet:Lorg/michaelbel/bottomsheet/BottomSheet;

    invoke-static {v0, p1}, Lorg/michaelbel/bottomsheet/BottomSheet;->access$4102(Lorg/michaelbel/bottomsheet/BottomSheet;I)I

    return-object p0
.end method

.method public setTitleTextColorRes(I)Lorg/michaelbel/bottomsheet/BottomSheet$Builder;
    .locals 2

    .line 1285
    iget-object v0, p0, Lorg/michaelbel/bottomsheet/BottomSheet$Builder;->bottomSheet:Lorg/michaelbel/bottomsheet/BottomSheet;

    iget-object v1, p0, Lorg/michaelbel/bottomsheet/BottomSheet$Builder;->context:Landroid/content/Context;

    invoke-static {v1, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-static {v0, p1}, Lorg/michaelbel/bottomsheet/BottomSheet;->access$4102(Lorg/michaelbel/bottomsheet/BottomSheet;I)I

    return-object p0
.end method

.method public setView(I)Lorg/michaelbel/bottomsheet/BottomSheet$Builder;
    .locals 3

    .line 1171
    iget-object v0, p0, Lorg/michaelbel/bottomsheet/BottomSheet$Builder;->bottomSheet:Lorg/michaelbel/bottomsheet/BottomSheet;

    iget-object v1, p0, Lorg/michaelbel/bottomsheet/BottomSheet$Builder;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/michaelbel/bottomsheet/BottomSheet;->access$3302(Lorg/michaelbel/bottomsheet/BottomSheet;Landroid/view/View;)Landroid/view/View;

    return-object p0
.end method

.method public setView(Landroid/view/View;)Lorg/michaelbel/bottomsheet/BottomSheet$Builder;
    .locals 1

    .line 1176
    iget-object v0, p0, Lorg/michaelbel/bottomsheet/BottomSheet$Builder;->bottomSheet:Lorg/michaelbel/bottomsheet/BottomSheet;

    invoke-static {v0, p1}, Lorg/michaelbel/bottomsheet/BottomSheet;->access$3302(Lorg/michaelbel/bottomsheet/BottomSheet;Landroid/view/View;)Landroid/view/View;

    return-object p0
.end method

.method public setWindowDimming(I)Lorg/michaelbel/bottomsheet/BottomSheet$Builder;
    .locals 1

    .line 1236
    iget-object v0, p0, Lorg/michaelbel/bottomsheet/BottomSheet$Builder;->bottomSheet:Lorg/michaelbel/bottomsheet/BottomSheet;

    invoke-static {v0, p1}, Lorg/michaelbel/bottomsheet/BottomSheet;->access$3802(Lorg/michaelbel/bottomsheet/BottomSheet;I)I

    return-object p0
.end method

.method public show()Lorg/michaelbel/bottomsheet/BottomSheet;
    .locals 1

    .line 1338
    iget-object v0, p0, Lorg/michaelbel/bottomsheet/BottomSheet$Builder;->bottomSheet:Lorg/michaelbel/bottomsheet/BottomSheet;

    invoke-virtual {v0}, Lorg/michaelbel/bottomsheet/BottomSheet;->show()V

    .line 1339
    iget-object v0, p0, Lorg/michaelbel/bottomsheet/BottomSheet$Builder;->bottomSheet:Lorg/michaelbel/bottomsheet/BottomSheet;

    return-object v0
.end method
