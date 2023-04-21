.class public Lcom/senseonics/mycircle/home/MyCircleAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "MyCircleAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/senseonics/mycircle/home/MyCircleListItemView;",
        ">;"
    }
.end annotation


# instance fields
.field private peers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/senseonics/mycircle/model/MyCirclePeerModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/senseonics/mycircle/model/MyCirclePeerModel;",
            ">;)V"
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/senseonics/mycircle/home/MyCircleAdapter;->peers:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/senseonics/mycircle/home/MyCircleAdapter;->peers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 14
    check-cast p1, Lcom/senseonics/mycircle/home/MyCircleListItemView;

    invoke-virtual {p0, p1, p2}, Lcom/senseonics/mycircle/home/MyCircleAdapter;->onBindViewHolder(Lcom/senseonics/mycircle/home/MyCircleListItemView;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/senseonics/mycircle/home/MyCircleListItemView;I)V
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/senseonics/mycircle/home/MyCircleAdapter;->peers:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/senseonics/mycircle/model/MyCirclePeerModel;

    invoke-virtual {p1, p2}, Lcom/senseonics/mycircle/home/MyCircleListItemView;->init(Lcom/senseonics/mycircle/model/MyCirclePeerModel;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 14
    invoke-virtual {p0, p1, p2}, Lcom/senseonics/mycircle/home/MyCircleAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/senseonics/mycircle/home/MyCircleListItemView;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/senseonics/mycircle/home/MyCircleListItemView;
    .locals 2

    .line 23
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c00e0

    const/4 v1, 0x0

    .line 24
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 26
    new-instance v0, Lcom/senseonics/mycircle/home/MyCircleListItemView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p2, p1}, Lcom/senseonics/mycircle/home/MyCircleListItemView;-><init>(Landroid/view/View;Landroid/content/Context;)V

    return-object v0
.end method

.method public resetPeersList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/senseonics/mycircle/model/MyCirclePeerModel;",
            ">;)V"
        }
    .end annotation

    .line 40
    iput-object p1, p0, Lcom/senseonics/mycircle/home/MyCircleAdapter;->peers:Ljava/util/List;

    .line 41
    invoke-virtual {p0}, Lcom/senseonics/mycircle/home/MyCircleAdapter;->notifyDataSetChanged()V

    return-void
.end method
