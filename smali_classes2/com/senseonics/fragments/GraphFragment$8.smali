.class Lcom/senseonics/fragments/GraphFragment$8;
.super Ljava/lang/Object;
.source "GraphFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/senseonics/fragments/GraphFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/fragments/GraphFragment;


# direct methods
.method constructor <init>(Lcom/senseonics/fragments/GraphFragment;)V
    .locals 0

    .line 580
    iput-object p1, p0, Lcom/senseonics/fragments/GraphFragment$8;->this$0:Lcom/senseonics/fragments/GraphFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 584
    iget-object p1, p0, Lcom/senseonics/fragments/GraphFragment$8;->this$0:Lcom/senseonics/fragments/GraphFragment;

    invoke-virtual {p1}, Lcom/senseonics/fragments/GraphFragment;->onDateClick()V

    return-void
.end method
