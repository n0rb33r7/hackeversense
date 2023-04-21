.class Lcom/senseonics/events/InsulinEventActivity$3;
.super Ljava/lang/Object;
.source "InsulinEventActivity.java"

# interfaces
.implements Lcom/senseonics/util/dialogs/DoublePickerManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/events/InsulinEventActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/events/InsulinEventActivity;


# direct methods
.method constructor <init>(Lcom/senseonics/events/InsulinEventActivity;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/senseonics/events/InsulinEventActivity$3;->this$0:Lcom/senseonics/events/InsulinEventActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public selected(II)V
    .locals 3

    .line 73
    iget-object v0, p0, Lcom/senseonics/events/InsulinEventActivity$3;->this$0:Lcom/senseonics/events/InsulinEventActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/senseonics/events/InsulinEventActivity$3;->this$0:Lcom/senseonics/events/InsulinEventActivity;

    invoke-static {v2}, Lcom/senseonics/events/InsulinEventActivity;->-$$Nest$fgetlist_integer(Lcom/senseonics/events/InsulinEventActivity;)Ljava/util/ArrayList;

    move-result-object v2

    .line 74
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/senseonics/util/Item;

    invoke-virtual {p1}, Lcom/senseonics/util/Item;->getValue()Ljava/lang/String;

    move-result-object p1

    .line 73
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Lcom/senseonics/events/InsulinEventActivity$3;->this$0:Lcom/senseonics/events/InsulinEventActivity;

    invoke-static {v1}, Lcom/senseonics/events/InsulinEventActivity;->-$$Nest$fgetlist_decimal(Lcom/senseonics/events/InsulinEventActivity;)Ljava/util/ArrayList;

    move-result-object v1

    .line 75
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/senseonics/util/Item;

    invoke-virtual {p2}, Lcom/senseonics/util/Item;->getValue()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 73
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    invoke-static {v0, p1}, Lcom/senseonics/events/InsulinEventActivity;->-$$Nest$fputselectedUnit(Lcom/senseonics/events/InsulinEventActivity;F)V

    .line 76
    iget-object p1, p0, Lcom/senseonics/events/InsulinEventActivity$3;->this$0:Lcom/senseonics/events/InsulinEventActivity;

    invoke-static {p1}, Lcom/senseonics/events/InsulinEventActivity;->-$$Nest$fgetunitsTextView(Lcom/senseonics/events/InsulinEventActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object p2, p0, Lcom/senseonics/events/InsulinEventActivity$3;->this$0:Lcom/senseonics/events/InsulinEventActivity;

    invoke-static {p2}, Lcom/senseonics/events/InsulinEventActivity;->-$$Nest$fgetselectedUnit(Lcom/senseonics/events/InsulinEventActivity;)F

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
