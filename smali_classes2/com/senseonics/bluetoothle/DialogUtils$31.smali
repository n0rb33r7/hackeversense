.class Lcom/senseonics/bluetoothle/DialogUtils$31;
.super Ljava/lang/Object;
.source "DialogUtils.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/bluetoothle/DialogUtils;->createTimePickerDialog(Landroid/content/Context;IILjava/lang/String;Lcom/senseonics/util/dialogs/TimeDialogManager;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/bluetoothle/DialogUtils;

.field final synthetic val$dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/senseonics/bluetoothle/DialogUtils;Landroid/app/Dialog;)V
    .locals 0

    .line 1317
    iput-object p1, p0, Lcom/senseonics/bluetoothle/DialogUtils$31;->this$0:Lcom/senseonics/bluetoothle/DialogUtils;

    iput-object p2, p0, Lcom/senseonics/bluetoothle/DialogUtils$31;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1321
    iget-object p1, p0, Lcom/senseonics/bluetoothle/DialogUtils$31;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
