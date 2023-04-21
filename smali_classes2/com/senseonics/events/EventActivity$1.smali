.class Lcom/senseonics/events/EventActivity$1;
.super Ljava/lang/Object;
.source "EventActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/events/EventActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/events/EventActivity;


# direct methods
.method constructor <init>(Lcom/senseonics/events/EventActivity;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/senseonics/events/EventActivity$1;->this$0:Lcom/senseonics/events/EventActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 127
    iget-object p1, p0, Lcom/senseonics/events/EventActivity$1;->this$0:Lcom/senseonics/events/EventActivity;

    iget-object p1, p1, Lcom/senseonics/events/EventActivity;->notesEditText:Landroid/widget/EditText;

    if-eqz p1, :cond_0

    .line 128
    iget-object p1, p0, Lcom/senseonics/events/EventActivity$1;->this$0:Lcom/senseonics/events/EventActivity;

    iget-object p1, p1, Lcom/senseonics/events/EventActivity;->notesEditText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 130
    iget-object p1, p0, Lcom/senseonics/events/EventActivity$1;->this$0:Lcom/senseonics/events/EventActivity;

    const-string v0, "input_method"

    invoke-virtual {p1, v0}, Lcom/senseonics/events/EventActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    .line 131
    iget-object v0, p0, Lcom/senseonics/events/EventActivity$1;->this$0:Lcom/senseonics/events/EventActivity;

    iget-object v0, v0, Lcom/senseonics/events/EventActivity;->notesEditText:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_0
    return-void
.end method
