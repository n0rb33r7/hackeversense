.class Lcom/senseonics/gen12androidapp/DeviceCompatibilityActivity$2;
.super Ljava/lang/Object;
.source "DeviceCompatibilityActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/gen12androidapp/DeviceCompatibilityActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/gen12androidapp/DeviceCompatibilityActivity;


# direct methods
.method constructor <init>(Lcom/senseonics/gen12androidapp/DeviceCompatibilityActivity;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/senseonics/gen12androidapp/DeviceCompatibilityActivity$2;->this$0:Lcom/senseonics/gen12androidapp/DeviceCompatibilityActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 57
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/DeviceCompatibilityActivity$2;->this$0:Lcom/senseonics/gen12androidapp/DeviceCompatibilityActivity;

    invoke-static {p1}, Lcom/senseonics/util/Utils;->saveFirstRunForCompatibility(Landroid/content/Context;)V

    .line 59
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/senseonics/gen12androidapp/DeviceCompatibilityActivity$2;->this$0:Lcom/senseonics/gen12androidapp/DeviceCompatibilityActivity;

    const-class v1, Lcom/senseonics/gen12androidapp/EulaScreenActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v0, 0x10008000

    .line 60
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 61
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/DeviceCompatibilityActivity$2;->this$0:Lcom/senseonics/gen12androidapp/DeviceCompatibilityActivity;

    invoke-virtual {v0, p1}, Lcom/senseonics/gen12androidapp/DeviceCompatibilityActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
