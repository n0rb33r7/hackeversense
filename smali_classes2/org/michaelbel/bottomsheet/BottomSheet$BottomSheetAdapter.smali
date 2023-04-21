.class Lorg/michaelbel/bottomsheet/BottomSheet$BottomSheetAdapter;
.super Landroid/widget/BaseAdapter;
.source "BottomSheet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/michaelbel/bottomsheet/BottomSheet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BottomSheetAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/michaelbel/bottomsheet/BottomSheet;


# direct methods
.method private constructor <init>(Lorg/michaelbel/bottomsheet/BottomSheet;)V
    .locals 0

    .line 1391
    iput-object p1, p0, Lorg/michaelbel/bottomsheet/BottomSheet$BottomSheetAdapter;->this$0:Lorg/michaelbel/bottomsheet/BottomSheet;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/michaelbel/bottomsheet/BottomSheet;Lorg/michaelbel/bottomsheet/BottomSheet$1;)V
    .locals 0

    .line 1391
    invoke-direct {p0, p1}, Lorg/michaelbel/bottomsheet/BottomSheet$BottomSheetAdapter;-><init>(Lorg/michaelbel/bottomsheet/BottomSheet;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 1395
    iget-object v0, p0, Lorg/michaelbel/bottomsheet/BottomSheet$BottomSheetAdapter;->this$0:Lorg/michaelbel/bottomsheet/BottomSheet;

    invoke-static {v0}, Lorg/michaelbel/bottomsheet/BottomSheet;->access$3100(Lorg/michaelbel/bottomsheet/BottomSheet;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/michaelbel/bottomsheet/BottomSheet$BottomSheetAdapter;->this$0:Lorg/michaelbel/bottomsheet/BottomSheet;

    invoke-static {v0}, Lorg/michaelbel/bottomsheet/BottomSheet;->access$3100(Lorg/michaelbel/bottomsheet/BottomSheet;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .line 1410
    invoke-virtual {p0, p1}, Lorg/michaelbel/bottomsheet/BottomSheet$BottomSheetAdapter;->getItemViewType(I)I

    move-result p3

    .line 1411
    iget-object v0, p0, Lorg/michaelbel/bottomsheet/BottomSheet$BottomSheetAdapter;->this$0:Lorg/michaelbel/bottomsheet/BottomSheet;

    invoke-static {v0}, Lorg/michaelbel/bottomsheet/BottomSheet;->access$5100(Lorg/michaelbel/bottomsheet/BottomSheet;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/michaelbel/bottomsheet/BottomSheetItem;

    if-nez p3, :cond_3

    .line 1414
    iget-object p3, p0, Lorg/michaelbel/bottomsheet/BottomSheet$BottomSheetAdapter;->this$0:Lorg/michaelbel/bottomsheet/BottomSheet;

    invoke-static {p3}, Lorg/michaelbel/bottomsheet/BottomSheet;->access$3400(Lorg/michaelbel/bottomsheet/BottomSheet;)I

    move-result p3

    const/4 v1, 0x1

    if-ne p3, v1, :cond_1

    if-nez p2, :cond_0

    .line 1416
    new-instance p2, Lorg/michaelbel/bottomsheet/BottomSheetCell;

    iget-object p3, p0, Lorg/michaelbel/bottomsheet/BottomSheet$BottomSheetAdapter;->this$0:Lorg/michaelbel/bottomsheet/BottomSheet;

    invoke-virtual {p3}, Lorg/michaelbel/bottomsheet/BottomSheet;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3}, Lorg/michaelbel/bottomsheet/BottomSheetCell;-><init>(Landroid/content/Context;)V

    .line 1419
    :cond_0
    move-object p3, p2

    check-cast p3, Lorg/michaelbel/bottomsheet/BottomSheetCell;

    .line 1420
    iget-object v2, v0, Lorg/michaelbel/bottomsheet/BottomSheetItem;->icon:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lorg/michaelbel/bottomsheet/BottomSheet$BottomSheetAdapter;->this$0:Lorg/michaelbel/bottomsheet/BottomSheet;

    invoke-static {v3}, Lorg/michaelbel/bottomsheet/BottomSheet;->access$4300(Lorg/michaelbel/bottomsheet/BottomSheet;)I

    move-result v3

    invoke-virtual {p3, v2, v3}, Lorg/michaelbel/bottomsheet/BottomSheetCell;->setIcon(Landroid/graphics/drawable/Drawable;I)Lorg/michaelbel/bottomsheet/BottomSheetCell;

    .line 1421
    iget-object v0, v0, Lorg/michaelbel/bottomsheet/BottomSheetItem;->text:Ljava/lang/CharSequence;

    iget-object v2, p0, Lorg/michaelbel/bottomsheet/BottomSheet$BottomSheetAdapter;->this$0:Lorg/michaelbel/bottomsheet/BottomSheet;

    invoke-static {v2}, Lorg/michaelbel/bottomsheet/BottomSheet;->access$4200(Lorg/michaelbel/bottomsheet/BottomSheet;)I

    move-result v2

    invoke-virtual {p3, v0, v2}, Lorg/michaelbel/bottomsheet/BottomSheetCell;->setText(Ljava/lang/CharSequence;I)Lorg/michaelbel/bottomsheet/BottomSheetCell;

    .line 1422
    iget-object v0, p0, Lorg/michaelbel/bottomsheet/BottomSheet$BottomSheetAdapter;->this$0:Lorg/michaelbel/bottomsheet/BottomSheet;

    invoke-static {v0}, Lorg/michaelbel/bottomsheet/BottomSheet;->access$3600(Lorg/michaelbel/bottomsheet/BottomSheet;)I

    move-result v0

    invoke-virtual {p3, v0}, Lorg/michaelbel/bottomsheet/BottomSheetCell;->setHeight(I)Lorg/michaelbel/bottomsheet/BottomSheetCell;

    .line 1423
    iget-object v0, p0, Lorg/michaelbel/bottomsheet/BottomSheet$BottomSheetAdapter;->this$0:Lorg/michaelbel/bottomsheet/BottomSheet;

    invoke-static {v0}, Lorg/michaelbel/bottomsheet/BottomSheet;->access$5100(Lorg/michaelbel/bottomsheet/BottomSheet;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    if-eq p1, v0, :cond_3

    .line 1424
    iget-object p1, p0, Lorg/michaelbel/bottomsheet/BottomSheet$BottomSheetAdapter;->this$0:Lorg/michaelbel/bottomsheet/BottomSheet;

    invoke-static {p1}, Lorg/michaelbel/bottomsheet/BottomSheet;->access$3700(Lorg/michaelbel/bottomsheet/BottomSheet;)Z

    move-result p1

    invoke-virtual {p3, p1}, Lorg/michaelbel/bottomsheet/BottomSheetCell;->setDivider(Z)Lorg/michaelbel/bottomsheet/BottomSheetCell;

    .line 1425
    iget-object p1, p0, Lorg/michaelbel/bottomsheet/BottomSheet$BottomSheetAdapter;->this$0:Lorg/michaelbel/bottomsheet/BottomSheet;

    invoke-static {p1}, Lorg/michaelbel/bottomsheet/BottomSheet;->access$3500(Lorg/michaelbel/bottomsheet/BottomSheet;)Z

    move-result p1

    invoke-virtual {p3, p1}, Lorg/michaelbel/bottomsheet/BottomSheetCell;->setDividerColor(Z)Lorg/michaelbel/bottomsheet/BottomSheetCell;

    goto :goto_0

    :cond_1
    if-nez p2, :cond_2

    .line 1429
    new-instance p2, Lorg/michaelbel/bottomsheet/BottomSheetGrid;

    iget-object p1, p0, Lorg/michaelbel/bottomsheet/BottomSheet$BottomSheetAdapter;->this$0:Lorg/michaelbel/bottomsheet/BottomSheet;

    invoke-virtual {p1}, Lorg/michaelbel/bottomsheet/BottomSheet;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/michaelbel/bottomsheet/BottomSheetGrid;-><init>(Landroid/content/Context;)V

    .line 1432
    :cond_2
    move-object p1, p2

    check-cast p1, Lorg/michaelbel/bottomsheet/BottomSheetGrid;

    .line 1433
    iget-object p3, v0, Lorg/michaelbel/bottomsheet/BottomSheetItem;->icon:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lorg/michaelbel/bottomsheet/BottomSheet$BottomSheetAdapter;->this$0:Lorg/michaelbel/bottomsheet/BottomSheet;

    invoke-static {v1}, Lorg/michaelbel/bottomsheet/BottomSheet;->access$4300(Lorg/michaelbel/bottomsheet/BottomSheet;)I

    move-result v1

    invoke-virtual {p1, p3, v1}, Lorg/michaelbel/bottomsheet/BottomSheetGrid;->setIcon(Landroid/graphics/drawable/Drawable;I)Lorg/michaelbel/bottomsheet/BottomSheetGrid;

    .line 1434
    iget-object p3, v0, Lorg/michaelbel/bottomsheet/BottomSheetItem;->text:Ljava/lang/CharSequence;

    iget-object v0, p0, Lorg/michaelbel/bottomsheet/BottomSheet$BottomSheetAdapter;->this$0:Lorg/michaelbel/bottomsheet/BottomSheet;

    invoke-static {v0}, Lorg/michaelbel/bottomsheet/BottomSheet;->access$4200(Lorg/michaelbel/bottomsheet/BottomSheet;)I

    move-result v0

    invoke-virtual {p1, p3, v0}, Lorg/michaelbel/bottomsheet/BottomSheetGrid;->setText(Ljava/lang/CharSequence;I)Lorg/michaelbel/bottomsheet/BottomSheetGrid;

    :cond_3
    :goto_0
    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
