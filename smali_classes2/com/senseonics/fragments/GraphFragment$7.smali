.class Lcom/senseonics/fragments/GraphFragment$7;
.super Ljava/lang/Object;
.source "GraphFragment.java"

# interfaces
.implements Lcom/senseonics/util/dialogs/DateDialogManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/fragments/GraphFragment;->createPickerViewDialog(Ljava/util/Calendar;)V
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

    .line 554
    iput-object p1, p0, Lcom/senseonics/fragments/GraphFragment$7;->this$0:Lcom/senseonics/fragments/GraphFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateSelected(Ljava/util/Calendar;)V
    .locals 1

    .line 557
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragment$7;->this$0:Lcom/senseonics/fragments/GraphFragment;

    iget-object v0, v0, Lcom/senseonics/fragments/GraphFragment;->graphManagerView:Lcom/senseonics/graph/GraphManagerView;

    if-eqz v0, :cond_0

    .line 558
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragment$7;->this$0:Lcom/senseonics/fragments/GraphFragment;

    iget-object v0, v0, Lcom/senseonics/fragments/GraphFragment;->graphManagerView:Lcom/senseonics/graph/GraphManagerView;

    invoke-virtual {v0, p1}, Lcom/senseonics/graph/GraphManagerView;->setCurrentVisibleDate(Ljava/util/Calendar;)V

    :cond_0
    return-void
.end method
