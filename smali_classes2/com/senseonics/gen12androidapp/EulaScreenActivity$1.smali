.class Lcom/senseonics/gen12androidapp/EulaScreenActivity$1;
.super Ljava/lang/Object;
.source "EulaScreenActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/gen12androidapp/EulaScreenActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/gen12androidapp/EulaScreenActivity;


# direct methods
.method constructor <init>(Lcom/senseonics/gen12androidapp/EulaScreenActivity;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/senseonics/gen12androidapp/EulaScreenActivity$1;->this$0:Lcom/senseonics/gen12androidapp/EulaScreenActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 24
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/EulaScreenActivity$1;->this$0:Lcom/senseonics/gen12androidapp/EulaScreenActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/senseonics/util/Utils;->saveIsEulaAccepted(Landroid/content/Context;Z)V

    .line 25
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/EulaScreenActivity$1;->this$0:Lcom/senseonics/gen12androidapp/EulaScreenActivity;

    invoke-virtual {p1}, Lcom/senseonics/gen12androidapp/EulaScreenActivity;->finish()V

    return-void
.end method
