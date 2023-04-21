.class Lcom/senseonics/fragments/PlacementGuideFragment$4;
.super Ljava/lang/Object;
.source "PlacementGuideFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/fragments/PlacementGuideFragment;->getBtnDetailOnClickListener()Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/fragments/PlacementGuideFragment;


# direct methods
.method constructor <init>(Lcom/senseonics/fragments/PlacementGuideFragment;)V
    .locals 0

    .line 267
    iput-object p1, p0, Lcom/senseonics/fragments/PlacementGuideFragment$4;->this$0:Lcom/senseonics/fragments/PlacementGuideFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 270
    iget-object p1, p0, Lcom/senseonics/fragments/PlacementGuideFragment$4;->this$0:Lcom/senseonics/fragments/PlacementGuideFragment;

    invoke-static {p1}, Lcom/senseonics/fragments/PlacementGuideFragment;->-$$Nest$fgetdetailLayout(Lcom/senseonics/fragments/PlacementGuideFragment;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v0

    .line 271
    :goto_0
    iget-object v1, p0, Lcom/senseonics/fragments/PlacementGuideFragment$4;->this$0:Lcom/senseonics/fragments/PlacementGuideFragment;

    invoke-static {v1}, Lcom/senseonics/fragments/PlacementGuideFragment;->-$$Nest$fgetbtnDetail(Lcom/senseonics/fragments/PlacementGuideFragment;)Landroid/widget/Button;

    move-result-object v1

    if-eqz p1, :cond_1

    const v2, 0x7f1102e1

    goto :goto_1

    :cond_1
    const v2, 0x7f1102e0

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 272
    iget-object v1, p0, Lcom/senseonics/fragments/PlacementGuideFragment$4;->this$0:Lcom/senseonics/fragments/PlacementGuideFragment;

    invoke-static {v1}, Lcom/senseonics/fragments/PlacementGuideFragment;->-$$Nest$fgetdetailLayout(Lcom/senseonics/fragments/PlacementGuideFragment;)Landroid/widget/LinearLayout;

    move-result-object v1

    const/4 v2, 0x4

    if-eqz p1, :cond_2

    move v3, v2

    goto :goto_2

    :cond_2
    move v3, v0

    :goto_2
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 273
    iget-object v1, p0, Lcom/senseonics/fragments/PlacementGuideFragment$4;->this$0:Lcom/senseonics/fragments/PlacementGuideFragment;

    invoke-static {v1}, Lcom/senseonics/fragments/PlacementGuideFragment;->-$$Nest$fgetsimpleLayout(Lcom/senseonics/fragments/PlacementGuideFragment;)Landroid/widget/RelativeLayout;

    move-result-object v1

    if-eqz p1, :cond_3

    goto :goto_3

    :cond_3
    move v0, v2

    :goto_3
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method
