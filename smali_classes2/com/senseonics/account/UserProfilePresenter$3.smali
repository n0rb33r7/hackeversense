.class Lcom/senseonics/account/UserProfilePresenter$3;
.super Ljava/lang/Object;
.source "UserProfilePresenter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/account/UserProfilePresenter;->attach(Lcom/senseonics/account/UserProfilePresenter$UserProfileView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/account/UserProfilePresenter;


# direct methods
.method constructor <init>(Lcom/senseonics/account/UserProfilePresenter;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/senseonics/account/UserProfilePresenter$3;->this$0:Lcom/senseonics/account/UserProfilePresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 65
    iget-object p1, p0, Lcom/senseonics/account/UserProfilePresenter$3;->this$0:Lcom/senseonics/account/UserProfilePresenter;

    invoke-static {p1}, Lcom/senseonics/account/UserProfilePresenter;->-$$Nest$mhandleLogoutClicked(Lcom/senseonics/account/UserProfilePresenter;)V

    return-void
.end method
